package com.sinsp.richard.web.manage.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.manage.service.MyPageService;

/**
 * 마이페이지 Controller
 *
 * @author KCL
 * @since 2020. 06. 06.
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *
 *  수정일          수정자      수정내용
 *  ------------    --------    ----------------------------
 * 2020. 06. 06.    KCL         최초생성
 *
 * </pre>
 */

@Controller
@RequestMapping(value="/manage")
public class MyPageController {

	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);

	@Autowired
	private MyPageService myPageService;

	@RequestMapping(value={"/myPageMain.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String myPageMain(Model model) throws RichardException{
		myPageService.findMyPageMainInfo();
		return "manage/myPageMain";
	}

	@RequestMapping(value={"/activeList.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String myPageActive(Model model) throws RichardException{
		myPageService.findListActive();
		return "manage/activeList";
	}

	@RequestMapping(value={"/likeUserList.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String likeUserList(Model model) throws RichardException{
		myPageService.findListLikeUser();
		return "manage/likeUserList";
	}

}
