package mz.controller;


import java.io.IOException;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import mz.domain.DayData;
import mz.service.DayDataService;



@RestController
@RequestMapping("/home")
public class LoginController {

    private static final Logger log = LoggerFactory.getLogger(LoginController.class);
    private SimpleDateFormat df = new SimpleDateFormat("yyyy.MM.dd");
    private String currentDate = df.format( new Date());
    
    @Autowired
    DayDataService dayDataService;

    
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public void updateLatestData(double wb_zyl, double wb_yjl, double ch_zyl, double ch_yjl) throws IOException {
    	log.info("/home/add/"); 
    	dayDataService.addLatestData(wb_zyl, wb_yjl, ch_zyl, ch_yjl);
    	dayDataService.updateData(dayDataService.getYesterdayDate());  
    }
    
    @RequestMapping(value = "/addAM", method = RequestMethod.POST)
    public void updateAMLatestData(int ranking, int active, int page_amount) throws IOException {
    	log.info("/home/addAM/"); 
    	if(dayDataService.updateAMData(ranking, active, page_amount, dayDataService.getYesterdayDate())) {
    		dayDataService.addAMLatestData(ranking, active, page_amount);
    	}
    }
    
    @RequestMapping(value = "/data", method = RequestMethod.GET)
    public String getMonthDayDate() throws IOException {
        log.info("/home/data/");           
        
        /* 微博/超话		截止昨日22:00粉丝数
         * dataList	微博+超话  		截止昨日22:00粉丝数
         * amount	微博粉丝数取整  	单位W
         * str：zyl_wb|yjl_wb| zyl_wb_W | yjl_wb_W |zyl_ch|yjl_ch|
         * */  
        ArrayList<DayData> dataList = dayDataService.getLatestDayDate(currentDate);
        int amount1 = (int) Math.round(dataList.get(0).getAmount()/10000);
        int amount2 =  (int) Math.round(dataList.get(1).getAmount()/10000);
        String str = "|" + (int)dataList.get(0).getAmount()+"|"+ (int)dataList.get(1).getAmount() + "|" + amount1 + "W|" + amount2 + "W|" + dataList.get(2).getAmount() + "W|" + dataList.get(3).getAmount() + "W|";
        
        /* 微博/超话	上月末粉丝数
         * monthDataList	上月最后一天 微博+超话 粉丝数
         * str_month：上月末zyl_wb|上月末yjl_wb|上月末zyl_ch|上月末yjl_ch|
         * */
        ArrayList<DayData> monthDataList = dayDataService.getLastMonthDayDate();
        String str_month = (int)monthDataList.get(0).getAmount()+"|"+ (int)monthDataList.get(1).getAmount() + "|" + monthDataList.get(2).getAmount() + "W|" + monthDataList.get(3).getAmount() + "W|" + dayDataService.getBeforeLastMonthdate() + "|";
        
        /* 微博/超话  涨幅
         * diff  微博当月 当年涨幅
         * diff2 超话涨幅
         * str_diff：zyl_wb当月涨幅 | yjl_wb当月涨幅 | zyl_wb当年涨幅 | yjl_wb当年涨幅 | zyl_ch当月涨幅 | yjl_ch当月涨幅 |
         * */
        NumberFormat nf = NumberFormat.getNumberInstance();
        nf.setMaximumFractionDigits(2);
        int[] diff = new int[4];
        diff[0]= (int)dataList.get(0).getAmount()-(int)monthDataList.get(0).getAmount();
        diff[1]= (int)dataList.get(1).getAmount()-(int)monthDataList.get(1).getAmount();
        diff[2] = (int)dataList.get(0).getAmount() - (int)dayDataService.getLastYearDayDate().get(0).getAmount();
        diff[3] = (int)dataList.get(1).getAmount() - (int)dayDataService.getLastYearDayDate().get(1).getAmount();

        String[] diff2 = new String[2];
        diff2[0]= nf.format(dataList.get(2).getAmount()-monthDataList.get(2).getAmount());
        diff2[1]= nf.format(dataList.get(3).getAmount()-monthDataList.get(3).getAmount());
        String str_diff = diff[0] + "|" + diff[1] + "|" + diff[2] + "|" + diff[3] + "|" + diff2[0] + "|" + diff2[1] + "|";
        
        /* day			第几天
         * currentDate  今日日期
         * str_day：今日日期|第几天|
         * */
        int day = dataList.get(0).getId()+1;
        String str_day = currentDate + "|" + day + "|";
        
        
        System.out.println(str + str_month + str_diff + str_day);
    	return str + str_month + str_diff + str_day;
    }

}