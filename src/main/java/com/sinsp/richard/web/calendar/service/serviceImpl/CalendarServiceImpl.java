package com.sinsp.richard.web.calendar.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sinsp.richard.web.calendar.dao.CalendarDao;
import com.sinsp.richard.web.calendar.service.CalendarService;
import com.sinsp.richard.web.reservation.vo.ReserveVo;

@Service
public class CalendarServiceImpl implements CalendarService{

	@Autowired
    private CalendarDao calendarDao;

    public List<ReserveVo> calendarSelectAll() {
        return calendarDao.calendarSelectAll();
    }

}
