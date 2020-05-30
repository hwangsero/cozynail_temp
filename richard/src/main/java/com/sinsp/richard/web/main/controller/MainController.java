package com.sinsp.richard.web.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

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
	public String goLogin(Model model) throws RichardException{
		return "redirect:/main.do";
	}

	@RequestMapping(value={"main.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String login(Model model) throws RichardException{
		logger.info(">>>>>>>>  main");
		mainService.getMainList();
		return "main";
	}
}
