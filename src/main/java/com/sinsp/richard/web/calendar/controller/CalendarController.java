package com.sinsp.richard.web.calendar.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.calendar.service.CalendarService;
import com.sinsp.richard.web.reservation.vo.ReserveVo;


@Controller
public class CalendarController {

	private static final Logger logger = LoggerFactory.getLogger(CalendarController.class);

	@Autowired
	private CalendarService calendarService;

    @RequestMapping(value = "/calendar.do", method=RequestMethod.GET)
    public String calendarMain(Model model) throws JsonProcessingException {
        return "calendar/calendar";
    }

    @ResponseBody
    @GetMapping(value = "/calendarInfo.do")
    public  List<ReserveVo> calendarInfo() {
    	List<ReserveVo> calList = calendarService.calendarSelectAll();
    	return calList;
    }

}
