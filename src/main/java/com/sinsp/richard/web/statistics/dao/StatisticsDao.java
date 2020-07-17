package com.sinsp.richard.web.statistics.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sinsp.richard.common.dao.CommonSqlDao;
import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.statistics.service.StatisticsVo;

@Repository("statisticsDAO")
public class StatisticsDao extends CommonSqlDao {

    private static String prefix = "StatisticsMapper.";

    public List<StatisticsVo> calendarSelectAll() {
        List<StatisticsVo> list = selectList("selectCalendarAll");
        return list;
    }

	public Map<String, Object> getYearList(Map<String, Object> map) throws RichardException{

		return null;
	}
}
