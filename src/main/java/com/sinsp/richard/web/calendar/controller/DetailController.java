package com.sinsp.richard.web.calendar.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.calendar.service.DetailService;

@Controller
public class DetailController {

	private static final Logger logger = LoggerFactory.getLogger(DetailController.class);

	@Autowired
	private DetailService detailService;

	@RequestMapping(value={"/{id}/detail.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String calen_ex2(Model model) throws RichardException{
		logger.info(">>>>>>>>  calendar_detail");
		return "calendar/detail";
	}
}
