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
		return "main/main";
	}

	@RequestMapping(value={"main_write_form.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String main_write(Model model) throws RichardException{
		logger.info(">>>>>>>>  main_write_form");

		return "main/write_form";
	}

	@RequestMapping(value={"calendar.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String calen_ex(Model model) throws RichardException{
		logger.info(">>>>>>>>  calendar");
		return "calendar/calendar";
	}

	@RequestMapping(value={"/{id}/detail.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String calen_ex2(Model model) throws RichardException{
		logger.info(">>>>>>>>  calendar_detail");
		return "calendar/detail";
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
	@RequestMapping(value={"toRegister.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String register(Model model) throws RichardException{
		logger.info(">>>>>>>>  toRegister.do");
		return "member/register";
	}
	@RequestMapping(value={"wherecozynail.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String place(Model model) throws RichardException{
		logger.info(">>>>>>>>  wherecozynail");
		return "place/map";
	}
	@RequestMapping(value={"rates.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String rates(Model model) throws RichardException{
		logger.info(">>>>>>>>  rates");
		return "rates/rates";
	}
	@RequestMapping(value={"faq.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String faq(Model model) throws RichardException{
		logger.info(">>>>>>>>  faq");
		return "questions/faq";
	}
	@RequestMapping(value={"onevsone.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String onevsone(Model model) throws RichardException{
		logger.info(">>>>>>>>  onevsone");
		return "questions/1vs1";
	}
}
