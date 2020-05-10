package com.sinsp.richard.web.user.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController; // RestController
import org.springframework.web.bind.annotation.RequestMethod;

import com.sinsp.richard.web.user.service.UserService;

//@RestController
@Controller
public class UserController {
	private Log log = LogFactory.getLog(UserController.class);

	@Autowired
	private UserService userService;

	//value={"/{menu}/EmplyrCreat.do", "/myweb.do"} 아주 유용.
	//public void EmplyrCreat(@PathVariable("menu") String menu) uri를 변수로 사용할 수 있다.
	//주소는 똑같은데 view페이지가 계속 바뀌어야 하는 페이지가 있을때 사용한다.
	//
	@RequestMapping(value={"/{menu}/EmplyrCreat.do", "/myweb.do", "/{menu}"}, method= {RequestMethod.GET, RequestMethod.POST}) //method= {RequestMethod.GET, RequestMethod.POST}를 안써도 default값이 두개 다 허용함.
	public void EmplyrCreat(@PathVariable("menu") String menu) {
		//userService.getUserList();
		//void로 return값이 없으면 EmplyrCreat의 view를 찾게 된다.EmplyrCreat.jsp
		System.out.println(">>>>>>>>EmplyrCreat" + menu);
	}


	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public void home() {
		log.info("Welcome home!");
	}

}


