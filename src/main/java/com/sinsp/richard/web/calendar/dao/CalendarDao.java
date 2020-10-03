package com.sinsp.richard.web.calendar.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sinsp.richard.common.dao.CommonSqlDao;
import com.sinsp.richard.web.reservation.vo.ReserveVo;

@Repository
public class CalendarDao extends CommonSqlDao {

	private static String prefix = "CalendarMapper.";

    public List<ReserveVo> calendarSelectAll() {
        List<ReserveVo> list = selectList("selectCalendarAll");
        return list;
    }

}
