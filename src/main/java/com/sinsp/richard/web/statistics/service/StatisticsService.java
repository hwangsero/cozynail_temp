package com.sinsp.richard.web.statistics.service;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sinsp.richard.common.exception.RichardException;

@Repository
public interface StatisticsService {

	 public Map<String, Object> getYearList(Map<String, Object> map) throws RichardException;

//    private static String prefix = "StatisticsMapper.";
//
//    public List<StatisticsVo> calendarSelectAll() {
//        List<StatisticsVo> list = selectList("selectCalendarAll");
//        return list;
//    }


}
