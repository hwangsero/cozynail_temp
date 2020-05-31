package com.sinsp.richard.web.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.common.util.TokenMngUtil;
import com.sinsp.richard.web.user.service.UserService;
import com.sinsp.richard.web.user.vo.UserVo;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

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
@RequestMapping(value={"/user"})
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	//@Resource(name="spring") 리소스 쓰는게 좋음.
	//https://countryxide.tistory.com/1
	@Autowired //스프링에서 제공하는 어노테이션
	private UserService userService;

	//value={"/{menu}/EmplyrCreat.do", "/myweb.do"} 아주 유용.
	//public void EmplyrCreat(@PathVariable("menu") String menu) uri를 변수로 사용할 수 있다.
	//주소는 똑같은데 view페이지가 계속 바뀌어야 하는 페이지가 있을때 사용한다.
	//
	@RequestMapping(value={"EmplyrCreat.do", "myweb.do"}, method= {RequestMethod.GET, RequestMethod.POST}) //method= {RequestMethod.GET, RequestMethod.POST}를 안써도 default값이 두개 다 허용함.
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

	@RequestMapping(value={"user_login.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String login() throws RichardException{

		return "user/user_login";
	}
	@RequestMapping(value={"userJoinSuccess.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String userJoinSuccess(@ModelAttribute UserVo userVo, HttpServletRequest request, HttpServletResponse response) throws RichardException{
		logger.info(userVo.toString());
		logger.info((String) request.getAttribute("TOKEN_KEY"));

		if (TokenMngUtil.isTokenValid(request)) {
			logger.info("@@@@@@@@ : CSRF 공격 방어");
			// 세션 삭제 (세션을 먼저 삭제해야함)
			TokenMngUtil.resetToken(request);

			// TODO
			// DB 로직 구현
			//userService.insertMem(userVo);
		}
		return "user/join/userJoinSuccess";
	}

	//Join
	@RequestMapping(value={"include_join.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String include_join(Model model, HttpServletRequest request, HttpServletResponse response) throws RichardException{
		logger.info("include_join");
		TokenMngUtil.saveToken(request);
		model.addAttribute("TOKEN_KEY", request.getAttribute("TOKEN_KEY"));
		return "user/join/include_join";
	}
	//Login
	@RequestMapping(value={"include_login.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String include_login(Model model, HttpServletRequest request, HttpServletResponse response) throws RichardException{
		logger.info("include_login");
		TokenMngUtil.saveToken(request);
		model.addAttribute("TOKEN_KEY", request.getAttribute("TOKEN_KEY"));
		return "user/login/include_login";
	}

	@RequestMapping(value={"log.do"}, method={RequestMethod.POST, RequestMethod.GET})
	public String log(UserVo vo, Model model) throws RichardException{
		vo.setName("윤지선");
		logger.info(">>>>>>>>" + vo.toString());
		userService.insertLog(vo);
		return "user/log";
	}

}
