package mz.mapper;


import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import mz.domain.DayData;


@Mapper
public interface WbMapper {
	
	/*取第一天数据*/
	DayData getWbZylFirstDayData();
	DayData getWbYjlFirstDayData();
	
	/*取最新数据*/
	DayData getWbZylLatestDayData();
	DayData getWbYjlLatestDayData();
	

	/*上月末微博数据*/
	DayData getWbZylAnyTimeDayData(String lastMonth);
	DayData getWbYjlAnyTimeDayData(String lastMonth);
	
	/*取所有数据*/
	ArrayList<DayData> getWbZyl();
	ArrayList<DayData> getWbYjl();
	
	/*添加最新数据*/
	void addWbZylData(DayData dayData);
	void addWbYjlData(DayData dayData);
	void addChZylData(DayData dayData);
	void addChYjlData(DayData dayData);
	
}
