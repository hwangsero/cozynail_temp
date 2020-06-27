package com.sinsp.richard.web.calendar.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.common.util.TokenMngUtil;
import com.sinsp.richard.web.calendar.service.DetailService;
import com.sinsp.richard.web.calendar.vo.reserveVO;


@Controller
public class DetailController {

	private static final Logger logger = LoggerFactory.getLogger(DetailController.class);

	@Autowired
	private DetailService detailService;

	@RequestMapping(value={"toRegister.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String register(HttpServletRequest request, HttpServletResponse response, Locale locale, Model model,
			HttpSession session) throws RichardException{
		TokenMngUtil.saveToken(request);
		logger.info(">>>>>>>>  toRegister.do");
		model.addAttribute("TOKEN_KEY", request.getAttribute("TOKEN_KEY"));
		return "member/register";
	}

	@RequestMapping(value = "/getReserveInfo.do", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
    public Map<String, Object> selectReserveInfo(		//세션에서 아이디를 받아서 기본정보를 리턴해줌
			reserveVO vo,
			HttpServletRequest request, HttpServletResponse response,
            Locale locale, Model model, HttpSession session) throws RichardException{
			logger.info(">>>>>>>> : " + vo.toString());
    		HashMap<String, Object> result = new HashMap<String, Object>();
    		result.put("result", detailService.getReserveInfo(vo));

		return result;
	}
}
