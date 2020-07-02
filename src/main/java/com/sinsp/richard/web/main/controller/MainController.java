package com.sinsp.richard.web.main.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.common.util.TokenMngUtil;
import com.sinsp.richard.web.main.service.MainService;
import com.sinsp.richard.web.main.vo.MainVo;


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
	public ModelAndView main(Model model) throws RichardException{
		logger.info(">>>>>>>>  main");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/main");
		ArrayList<MainVo> list = mainService.getMainList();// mainList 불러옴.

		logger.info(list.toString());
		mav.addObject("mainList",list);

		//관리자 여부 값 넘겨줘야함.

		return mav;
	}

	@RequestMapping(value={"main_write_form.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String main_write(Model model, HttpServletRequest request, HttpServletResponse response) throws RichardException{
		logger.info(">>>>>>>>  main_write_form");
		TokenMngUtil.saveToken(request);
		model.addAttribute("TOKEN_KEY", request.getAttribute("TOKEN_KEY"));
		return "main/write_form";
	}

	@RequestMapping(value={"main_write_submit.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public ModelAndView main_write_submit(@ModelAttribute MainVo mainVo, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws RichardException{
		logger.info(">>>>>>>>  main_write_submit");
		logger.info(mainVo.toString());
		logger.info((String) request.getAttribute("TOKEN_KEY"));
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/write_submit_end");
		int count = 0;

		if (TokenMngUtil.isTokenValid(request)) {
			logger.info("@@@@@@@@ : CSRF 공격 방어");
			// 세션 삭제 (세션을 먼저 삭제해야함)
			TokenMngUtil.resetToken(request);
			// DB 로직 구현
			// count = mainService.insert();
			count = 1;
		}
		if(count == 1) {
			mav.addObject("msg", "success");
		} else {
			mav.addObject("msg", "fail");
		}
		return mav;
	}




	@RequestMapping(value={"statistics.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String statistics(Model model) throws RichardException{
		logger.info(">>>>>>>>  statistics");
		return "statistics/statistics";
	}
	@RequestMapping(value={"member.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String member(Model model) throws RichardException{
		logger.info(">>>>>>>>  member");
		return "member/member";
	}
	@RequestMapping(value={"wherecozynail.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String place(Model model) throws RichardException{
		logger.info(">>>>>>>>  wherecozynail");
		return "information/map";
	}
	@RequestMapping(value={"rates.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String rates(Model model) throws RichardException{
		logger.info(">>>>>>>>  rates");
		return "information/rates";
	}
	@RequestMapping(value={"onevsone.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String onevsone(Model model) throws RichardException{
		logger.info(">>>>>>>>  onevsone");
		return "questions/1vs1";
	}
	@RequestMapping(value={"faq.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String faq(Model model) throws RichardException{
		logger.info(">>>>>>>>  faq");
		return "questions/faq";
	}
}
