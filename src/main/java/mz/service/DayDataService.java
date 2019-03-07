package mz.service;


import java.io.IOException;
import java.util.ArrayList;

import mz.domain.DayData;

public interface DayDataService {	
	ArrayList<DayData> getLatestDayDate(String time);
	ArrayList<DayData> getFirstDayDate(String time);
	ArrayList<DayData> getLastMonthDayDate();
	String getBeforeLastMonthdate();
	String getYesterdayDate();
	void updateData(String currentDate) throws IOException;
	boolean updateAMData(int ranking, int active, int page_amount, String yesterdayDate) throws IOException;
	
	void addLatestData(double wb_zyl, double wb_yjl, double ch_zyl, double ch_yjl);
	void addAMLatestData(int ranking, int active, int page_amount);
	ArrayList<DayData> getLastYearDayDate();
}
