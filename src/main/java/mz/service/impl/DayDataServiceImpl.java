package mz.service.impl;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mz.domain.AMData;
import mz.domain.DayData;
import mz.mapper.AMMapper;
import mz.mapper.ChMapper;
import mz.mapper.WbMapper;
import mz.service.DayDataService;

@Service
public class DayDataServiceImpl implements DayDataService {

    private static final Logger log = LoggerFactory.getLogger(DayDataServiceImpl.class);
    @Autowired
    WbMapper wbMapper;
    
    @Autowired
    ChMapper chMapper;
    
    @Autowired
    AMMapper amMapper;
    

	@Override
	public ArrayList<DayData> getFirstDayDate(String time) {
		log.info("getFirstDayDate: " + time);
		ArrayList<DayData> dataList = new ArrayList<DayData>();
		DayData data = new DayData();
		data = wbMapper.getWbZylFirstDayData();
		dataList.add(data);
		data = wbMapper.getWbYjlFirstDayData();
		dataList.add(data);
		return dataList;
	}
	
	@Override
	public ArrayList<DayData> getLatestDayDate(String time) {
		// TODO Auto-generated method stub
		log.info("getFirstDayDate: " + time);
		ArrayList<DayData> dataList = new ArrayList<DayData>();
		DayData data = new DayData();
		data = wbMapper.getWbZylLatestDayData();
		dataList.add(data);
		data = wbMapper.getWbYjlLatestDayData();
		dataList.add(data);
		data = chMapper.getCh_dayZylLatestDayData();
		dataList.add(data);
		data = chMapper.getCh_dayYjlLatestDayData();
		dataList.add(data);
		return dataList;
	}

	@Override
	public ArrayList<DayData> getLastMonthDayDate() {
		String lastMonth = getBeforeLastMonthdate();
		log.info("getLastMonthDayDate: " + lastMonth);
		ArrayList<DayData> dataList = new ArrayList<DayData>();
		DayData data = new DayData();
		data = wbMapper.getWbZylAnyTimeDayData(lastMonth);
		dataList.add(data);
		data = wbMapper.getWbYjlAnyTimeDayData(lastMonth);
		dataList.add(data);
		data = chMapper.getChZylLastMonthDayData(lastMonth);
		dataList.add(data);
		data = chMapper.getChYjlLastMonthDayData(lastMonth);
		dataList.add(data);
		return dataList;
	}
	
	@Override
	public ArrayList<DayData> getLastYearDayDate() {
		String lastYear = "2018-12-31";
		log.info("getLastMonthDayDate: " + lastYear);
		ArrayList<DayData> dataList = new ArrayList<DayData>();
		DayData data = new DayData();
		data = wbMapper.getWbZylAnyTimeDayData(lastYear);
		dataList.add(data);
		data = wbMapper.getWbYjlAnyTimeDayData(lastYear);
		dataList.add(data);
		return dataList;
	}

	
	/*得到上月最后一天日期*/
	@Override
	public String getBeforeLastMonthdate(){
		log.info("getBeforeLastMonthdate");
		SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
		Calendar calendar=Calendar.getInstance();
		int month=calendar.get(Calendar.MONTH);
		calendar.set(Calendar.MONTH, month-1);
		calendar.set(Calendar.DAY_OF_MONTH, calendar.getActualMaximum(Calendar.DAY_OF_MONTH));
		return sf.format(calendar.getTime());
	}

	/*得到昨天日期*/
	@Override
	public String getYesterdayDate() {
		log.info("getBeforeLastMonthdate");
		SimpleDateFormat sf=new SimpleDateFormat("MM-dd");
		Calendar cl = Calendar.getInstance();
		// cl.setTime(dateNow);
		 cl.add(Calendar.DAY_OF_YEAR, -1);
		//一天
		// cl.add(Calendar.WEEK_OF_YEAR, -1);
		//一周
		//cl.add(Calendar.MONTH, -1);
		//从现在算，之前一个月,如果是2个月，那么-1-----》改为-2
		Date dateFrom = cl.getTime();
		return sf.format(dateFrom);
	}	
	
	

	/* 添加粉丝数新数据到数据库 */
	@Override
	public void addLatestData(double wb_zyl, double wb_yjl, double ch_zyl, double ch_yjl) {
		log.info("addLatestData: " + wb_zyl + " " + wb_yjl + " " + ch_zyl + " " + ch_yjl);

		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cl = Calendar.getInstance();
		cl.add(Calendar.DAY_OF_YEAR, -1);
		Date dateFrom = cl.getTime();
		
	    String record_time = df.format(dateFrom) + " 22:00:00";
		DayData wb_zyl_data = new DayData();
		DayData wb_yjl_data = new DayData();
		DayData ch_zyl_data = new DayData();
		DayData ch_yjl_data = new DayData();
		
		int id = wbMapper.getWbZylLatestDayData().getId() + 1;
		wb_zyl_data.setAll(id, wb_zyl, record_time);
		wb_yjl_data.setAll(id, wb_yjl, record_time);		
		
		id = chMapper.getCh_dayZylLatestDayData().getId() + 1;
		ch_zyl_data.setAll(id, ch_zyl, record_time);
		ch_yjl_data.setAll(id, ch_yjl, record_time);
		
		wbMapper.addWbZylData(wb_zyl_data);
		wbMapper.addWbYjlData(wb_yjl_data);
		chMapper.addChZylData(ch_zyl_data);
		chMapper.addChYjlData(ch_yjl_data);
	}

	/* 添加艾漫新数据到数据库 */
	@Override
	public void addAMLatestData(int ranking, int active, int page_amount) {
		log.info("addAMLatestData: " + ranking + " " + active + " " + page_amount);
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cl = Calendar.getInstance();
		cl.add(Calendar.DAY_OF_YEAR, -1);
		Date dateFrom = cl.getTime();
		String record_time = df.format(dateFrom);
		
		AMData amData = new AMData();
		int id = amMapper.getAMLatestData().getId() + 1;
		amData.setAll(id, ranking, active, page_amount, record_time);
		
		amMapper.addAMData(amData);
	}

	/* 更新粉丝数新数据到网页 */
	@Override
	public void updateData(String currentDate) throws IOException {
		log.info("updateData");
		
		/*zyl_wb 每日粉丝数涨幅*/
		ArrayList<DayData> wbZylDataList = new ArrayList<DayData>();
		wbZylDataList = wbMapper.getWbZyl();
		System.out.println(wbZylDataList.get(wbZylDataList.size() - 1).getAmount() + "-" + wbZylDataList.get(wbZylDataList.size() - 2).getAmount());
		int zylDiffData = (int) (wbZylDataList.get(wbZylDataList.size() - 1).getAmount() - wbZylDataList.get(wbZylDataList.size() - 2).getAmount());
		
		/*yjl_wb 每日粉丝数涨幅*/
		ArrayList<DayData> wbYjlDataList = new ArrayList<DayData>();
		wbYjlDataList = wbMapper.getWbYjl();
		int yjlDiffData = (int) (wbYjlDataList.get(wbYjlDataList.size() - 1).getAmount() - wbYjlDataList.get(wbYjlDataList.size() - 2).getAmount());
		
		UpdateHomeJS.updateHomeJS(zylDiffData, yjlDiffData, currentDate);
	}
	
	/* 更新艾漫新数据到网页 */
	@Override
	public boolean updateAMData(int ranking, int active, int page_amount, String yesterdayDate) throws IOException {
		log.info("updateAMData");
		boolean update = false;
		update = UpdateCustomJS.updateCustomJS(ranking, active, page_amount, yesterdayDate);
		return update;
	}
}
