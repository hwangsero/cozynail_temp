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
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.calendar.service.CalendarService;
import com.sinsp.richard.web.calendar.vo.reserveVO;

import net.sf.json.JSONArray;


@Controller
public class CalendarController {

	private static final Logger logger = LoggerFactory.getLogger(CalendarController.class);

	@Autowired
	private CalendarService calendarService;

    @RequestMapping(value = "/calendar.do", method=RequestMethod.GET)
    public String calendarMain(Model model) throws JsonProcessingException {
//        List<reserveVO> calList = calendarService.calendarSelectAll();
//        JSONArray result = new JSONArray();
//        for(int i=0;i<calList.size();i++) {
//            String json = new ObjectMapper().writeValueAsString(calList.get(i));
////            System.out.println(json);
//            result.add(json);
//        }
//        model.addAttribute("calList", result);
        return "calendar/calendar";
    }

    @ResponseBody
    @GetMapping(value = "/calendarInfo.do")
    public  List<reserveVO> calendarInfo() {
    	List<reserveVO> calList = calendarService.calendarSelectAll();
    	return calList;
    }

    @RequestMapping(value={"/{id}/detail.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String calen_ex2(Model model) throws RichardException{
		logger.info(">>>>>>>>  calendar_detail");
		return "calendar/detail";
	}

}
