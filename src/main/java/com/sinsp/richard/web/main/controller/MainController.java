package com.sinsp.richard.web.main.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.main.service.MainService;


/**
 * 메인 Controller
 *
 * @author 윤지선
 * @since 2020. 05. 24. 오전 01:31:21
 * @version 1.0
 * @see
 *
 *      <pre>
 * << 개정이력(Modification Information) >>
 *
 *  수정일            수정자                               수정내용
 *  -------        --------    ---------------------------
 * 2020. 05. 24.   윤지선                                    최초생성
 *
 * </pre>
 */
//@RestController
@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@Autowired
	private MainService mainService;

	@RequestMapping(value={"user/main.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String main_con(Model model) throws RichardException{
		return "redirect:/main.do";
	}

	@RequestMapping(value={"main.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String main(Model model) throws RichardException{
		logger.info(">>>>>>>>  main");
		mainService.getMainList();
		return "main";
	}

	@RequestMapping(value={"calendar.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String calen_ex(Model model) throws RichardException{
		logger.info(">>>>>>>>  calendar");
		return "calendar/calendar";
	}

	@RequestMapping(value={"calendar_detail.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String calen_ex2(Model model) throws RichardException{
		logger.info(">>>>>>>>  calendar_detail");
		return "calendar/detail";
	}
}
