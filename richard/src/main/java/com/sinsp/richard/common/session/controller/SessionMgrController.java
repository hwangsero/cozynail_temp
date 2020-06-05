package com.sinsp.richard.common.session.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.sinsp.richard.web.comm.service.CommService;

//참고 블로그
//https://offbyone.tistory.com/33


//스프링 시큐리티를 사용하지 않는다면 보안을 위해 인터셉터를 사용해야함.

@Controller
public class SessionMgrController extends HandlerInterceptorAdapter{
	//syso을 안쓰는 것이 좋음. log 찍는 방법.총 4가지
	private Log log = LogFactory.getLog(SessionMgrController.class);
	private Log log1 = LogFactory.getLog(this.getClass());
	private Logger log2 = LoggerFactory.getLogger(SessionMgrController.class);
	private Logger log3 = LoggerFactory.getLogger(this.getClass());

	@Autowired
	public CommService beanCommService;

	List<String> pageList = null;
	String[] pageArray = null;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		log.info(">>>>>>>>>> 인터셉터 시작");
		boolean result = false;  // 진행 여부
		boolean check = false;  // 세션 존재 여부?
		boolean levelCheck = false; // 권한 체크

		//https://love2taeyeon.tistory.com/entry/Session
		HttpSession session = request.getSession(false); //인자값 false로 했을 경우 null인지 체크 꼭 해줘야함.

		String requestUri = request.getRequestURI();

		//localhost/test.do?name=1234
		if(!requestUri.equals("/")) { // 공백 체크할 때 "".equals(requestUri)를 써야함. ""을 먼저 쓰는 이유는 requestUri가 null일때 에러가 발생하기 때문.
			String uriTemp = "";
			if(requestUri.indexOf("?") > 0) {
				uriTemp = requestUri.substring(0, requestUri.indexOf("?"));
			} else {
				uriTemp = requestUri;
			}

			String[] uriData = uriTemp.split("/");

			// DB에서 읽어온다.
			if(pageList == null) {
				pageList = beanCommService.getPageList();
				pageArray = pageList.toArray(new String[pageList.size()]);
				log.info("pageList : " + pageList);
			}

			String[] excludePage = pageArray;

			// 세션이 있을때
			if(session != null) {

			}

			if(uriData.length > 0) {

				for(int j = 0; j< excludePage.length; j++) {
					if(uriData[uriData.length-1].equals(excludePage[j])) {
						check = true;
					}
				}
			} else {
				check = true;
			}

		} else {
			check = true;
		}

		if(check != true) {
			if(session == null) {
				response.sendRedirect("/login/login.do?GBN=SESSIONOUT");
			} else {
				//int userLevel = Integer.parseInt(loginService.selectLoginUserInfo((String)session.getAttribute("userId")));

				if(session.getAttribute("userId") == null) {
					response.sendRedirect("/login.login.do?GBN=SESSIONOUT");
				} else {
					result = true;
				}
			}
		} else {
			result = true;
		}

		// 권한이 없을때
		if(levelCheck == true) {
			response.sendRedirect("/authority.do?GBN=SCOPEERROR");
		}
		return result;
	}
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
		// TODO Auto-generated method stub
		super.afterCompletion(request, response, handler, ex);
	}
}