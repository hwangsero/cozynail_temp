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

/**
 * 달력 Controller
 *
 * @author 황세로
 * @since 2020. 07. 18. 오후 17:23:34
 * @version 1.0
 * @see
 *
 *      <pre>
 * << 개정이력(Modification Information) >>
 *
 *  수정일            수정자                               수정내용
 *  -------        --------    ---------------------------
 * 2020. 07. 18.   황세로                                    최초생성
 *
 * </pre>
 */

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
