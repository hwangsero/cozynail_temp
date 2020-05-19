package com.sinsp.richard.web.user.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sinsp.richard.web.user.service.UserService;

//@RestController
@Controller
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	private UserService userService;

	//value={"/{menu}/EmplyrCreat.do", "/myweb.do"} 아주 유용.
	//public void EmplyrCreat(@PathVariable("menu") String menu) uri를 변수로 사용할 수 있다.
	//주소는 똑같은데 view페이지가 계속 바뀌어야 하는 페이지가 있을때 사용한다.
	//
	@RequestMapping(value={"/EmplyrCreat.do", "/myweb.do"}, method= {RequestMethod.GET, RequestMethod.POST}) //method= {RequestMethod.GET, RequestMethod.POST}를 안써도 default값이 두개 다 허용함.
	public String EmplyrCreat(Locale locale, Model model) {
		//userService.getUserList();
		//void로 return값이 없으면 EmplyrCreat의 view를 찾게 된다.EmplyrCreat.jsp
		logger.info(">>>>>>>>EmplyrCreat");
		//userService.getUserList();

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate );

		return "user/EmplyrCreat";
	}


	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate );

		return "home";
	}

}


