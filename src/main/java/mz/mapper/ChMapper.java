package mz.mapper;


import org.apache.ibatis.annotations.Mapper;

import mz.domain.DayData;

@Mapper
public interface ChMapper {
	
	/*取超话最新数据*/
	DayData getCh_dayZylLatestDayData();
	DayData getCh_dayYjlLatestDayData();
	
	/*上月末超话数据*/
	DayData getChZylLastMonthDayData(String lastMonth);
	DayData getChYjlLastMonthDayData(String lastMonth);
	
	/*添加最新数据*/
	void addChZylData(DayData dayData);
	void addChYjlData(DayData dayData);

}
