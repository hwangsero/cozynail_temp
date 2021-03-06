
package com.sinsp.richard.web.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.common.util.TokenMngUtil;
import com.sinsp.richard.web.user.service.UserService;
import com.sinsp.richard.web.user.vo.UserVo;


/**
 * 유저 Controller
 *
 * @author 윤지선
 * @since 2020. 05. 21. 오전 06:31:21
 * @version 1.0
 * @see
 *
 *      <pre>
 * << 개정이력(Modification Information) >>
 *
 *  수정일            수정자                               수정내용
 *  -------        --------    ---------------------------
 * 2020. 05. 10.   윤지선                                    최초생성
 * 2020. 05. 21.   윤지선                                    수업
 *
 * </pre>
 */
//@RestController
@Controller
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired //스프링에서 제공하는 어노테이션
	private UserService userService;

	// 회원 로그인/가입 메인 페이지
	@RequestMapping(value="/user/user_login.do", method={RequestMethod.POST, RequestMethod.GET})
	public String user_login() throws RichardException{

		return "user/user_login";
	}

	// 회원 가입 form
	@RequestMapping(value="/user/include_join.do", method={RequestMethod.POST, RequestMethod.GET})
	public String include_join(Model model, HttpServletRequest request, HttpServletResponse response) throws RichardException{
		logger.info("include_join");
		TokenMngUtil.saveToken(request);
		model.addAttribute("TOKEN_KEY", request.getAttribute("TOKEN_KEY"));
		return "user/join/include_join";
	}
	// 회원 로그인 form
	@RequestMapping(value="/user/include_login.do", method={RequestMethod.POST, RequestMethod.GET})
	public String include_login(Model model, HttpServletRequest request, HttpServletResponse response) throws RichardException{
		logger.info("include_login");
		TokenMngUtil.saveToken(request);
		model.addAttribute("TOKEN_KEY", request.getAttribute("TOKEN_KEY"));
		return "user/login/include_login";
	}

	// 회원 가입 처리
	@RequestMapping(value="/user/join_process.do", method={RequestMethod.POST, RequestMethod.GET})
	public ModelAndView join_process(@ModelAttribute UserVo userVo, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws RichardException{
		logger.info(userVo.toString());
		logger.info((String) request.getAttribute("TOKEN_KEY"));

		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/join/user_join_fail");
		if (TokenMngUtil.isTokenValid(request)) {

			logger.info("@@@@@@@@ : CSRF 공격 방어");
			// 세션 삭제 (세션을 먼저 삭제해야함)
			TokenMngUtil.resetToken(request);

			// TODO

			// DB 로직 구현
			if(userService.insertJoinUser(userVo)) {
				mav.setViewName("/user/join/user_join_success");
			}
		}

		return mav;
	}

	//아이디 중복체크
	@RequestMapping(value= "/user/user_id_check.ajax", method={RequestMethod.POST, RequestMethod.GET})
	public ModelAndView user_id_check(@ModelAttribute UserVo userVo, HttpServletRequest request, HttpServletResponse response) throws RichardException {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");

		logger.info("아이디 중복체크: " + userVo.getId());
		int existingUser = userService.getUserIdCount(userVo.getId());

		if(existingUser == 0) {
			mav.addObject("result", "Y"); // Y/N
			mav.addObject("msg", "사용 가능");
		} else {
			mav.addObject("result", "N"); // Y/N
			mav.addObject("msg", "사용 불가능");
		}
		return mav;
	}

	// 회원 로그인 성공/실패
	@RequestMapping(value="/user/login_process.do", method={RequestMethod.POST, RequestMethod.GET})
	public ModelAndView login_process(@ModelAttribute UserVo userVo, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws RichardException{
		logger.info(userVo.toString());
		logger.info((String) request.getAttribute("TOKEN_KEY"));

		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/login/user_login_fail");
		if (TokenMngUtil.isTokenValid(request)) {

			logger.info("@@@@@@@@ : CSRF 공격 방어");
			// 세션 삭제 (세션을 먼저 삭제해야함)
			TokenMngUtil.resetToken(request);

			// TODO

			if (userService.login(userVo)) { // 로그인 성공시 회원정보 불러옴.

				UserVo userInfo = userService.getUserInfo(userVo.getId());

				// -------------------------------------------------------------------
				// session 세션 저장
				// -------------------------------------------------------------------
				session.setAttribute("id", userInfo.getId());
				// session 내부 객체
				session.setAttribute("name", userInfo.getName());
				session.setAttribute("rank", userInfo.getUserRank());
				session.setAttribute("userPhoto", userInfo.getUserPhoto());

				// 로그인 내역 추가
				// insert DB

				mav.setViewName("redirect:/main.do");

			} else { // 로그인 실패시
				mav.setViewName("/user/login/user_login_fail");
			}
			// DB 로직 구현
			// Login 로직
		}
		return mav;
	}
	// 로그아웃
	@RequestMapping(value="/user/user_logout.do", method={RequestMethod.POST, RequestMethod.GET})
	public ModelAndView user_logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws RichardException{
		ModelAndView mav = new ModelAndView();

		//dddddsfasdfsasdfasdfasdf테스트테스트
		//세션 삭제
//		session.removeAttribute("id");
//		session.removeAttribute("name");
//		session.removeAttribute("rank");
		session.invalidate();//기존의 세션 데이터를 모두 삭제

		mav.setViewName("redirect:/main.do");
		return mav;
	}
	// 마이페이지 정보수정
	@RequestMapping(value="/mypage/mypage_info.do", method={RequestMethod.POST, RequestMethod.GET})
	public String mypage_info(Model model, HttpServletRequest request, HttpServletResponse response) throws RichardException{
		logger.info("mypage_info");
		TokenMngUtil.saveToken(request);
		model.addAttribute("TOKEN_KEY", request.getAttribute("TOKEN_KEY"));
		return "user/mypage/mypage_info";
	}
}