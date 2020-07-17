package com.sinsp.richard.web.statistics.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.statistics.service.StatisticsService;

@Controller
@RequestMapping(value="/statistics")
public class StatisticsController {

	@Resource(name = "statisticsService")
	private StatisticsService statisticsService;

    @RequestMapping(value = "/statistics.do")
    public String statisticsMain() throws RichardException{
        return "statistics/statistics";
    }

    @RequestMapping(value = "/getYearStaList.json", method = RequestMethod.POST)
    @ResponseBody
    public Model getYearStaList(@RequestBody Map<String, Object> map, Model model) throws RichardException{

    	Map<String, Object> yearResult = statisticsService.getYearList(map);
    	model.addAttribute("yearResult", yearResult);
    	return model;
    }
}
