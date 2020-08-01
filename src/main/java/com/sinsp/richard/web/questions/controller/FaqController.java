package com.sinsp.richard.web.questions.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sinsp.richard.common.exception.RichardException;

@Controller
public class FaqController {

	private static final Logger logger = LoggerFactory.getLogger(FaqController.class);
	
	@RequestMapping(value="/faq.do", method={RequestMethod.POST, RequestMethod.GET})
	public String faq(Model model) throws RichardException {
		return "questions/faq";
	}

}
