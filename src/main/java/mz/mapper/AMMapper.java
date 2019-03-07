package mz.mapper;

import org.apache.ibatis.annotations.Mapper;

import mz.domain.AMData;


@Mapper
public interface AMMapper {
	
	/*取超话最新数据*/
	AMData getAMLatestData();

	
	/*添加最新数据*/
	void addAMData(AMData amData);

}
