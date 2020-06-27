package com.sinsp.richard.web.calendar.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sinsp.richard.common.dao.CommonSqlDao;
import com.sinsp.richard.web.calendar.vo.reserveVO;

@Repository
public class CalendarDao extends CommonSqlDao {

	private static String prefix = "CalendarMapper.";

    public List<reserveVO> calendarSelectAll() {
        List<reserveVO> list = selectList("selectCalendarAll");
        return list;
    }

}
