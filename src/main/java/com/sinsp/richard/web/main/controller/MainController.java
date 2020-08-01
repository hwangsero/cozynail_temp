package com.sinsp.richard.web.main.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

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
import org.springframework.web.multipart.MultipartFile;
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

	// 회원 로그인/가입 메인 페이지
	@RequestMapping(value="/*/main.do", method={RequestMethod.POST, RequestMethod.GET})
	public String login() throws RichardException{

		return "redirect:/main.do";
	}


	@RequestMapping(value="/main.do", method={RequestMethod.POST, RequestMethod.GET})
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

	@RequestMapping(value="/main_write_form.do", method={RequestMethod.POST, RequestMethod.GET})
	public String main_write(Model model, HttpServletRequest request, HttpServletResponse response) throws RichardException{
		logger.info(">>>>>>>>  main_write_form");
		TokenMngUtil.saveToken(request);
		model.addAttribute("TOKEN_KEY", request.getAttribute("TOKEN_KEY"));
		return "main/write_form";
	}

	@RequestMapping(value="/main_write_submit.do", method={RequestMethod.POST, RequestMethod.GET})
	public ModelAndView main_write_submit(@ModelAttribute MainVo mainVo, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws RichardException{
		logger.info(">>>>>>>>  main_write_submit");
		logger.info((String) request.getAttribute("TOKEN_KEY"));
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/write_submit_end");
		int count = 0;
		if (TokenMngUtil.isTokenValid(request)) {
			logger.info("@@@@@@@@ : CSRF 공격 방어");
			// 세션 삭제 (세션을 먼저 삭제해야함)
			TokenMngUtil.resetToken(request);

			//file 처리 :: S
			String uploadPath=request.getSession().getServletContext().getRealPath("/upload/main/photo/");
			File target = new File(uploadPath);
			//폴더 없으면 폴더 생성
            if(!target.exists()) target.mkdirs();

	        MultipartFile photo = mainVo.getPhoto(); //나중에 공통함수에 다시 정리할것.
	        logger.info("================== file start ==================");
            logger.info("파일 이름: "+photo.getName());
            logger.info("파일 실제 이름: "+photo.getOriginalFilename());
            logger.info("파일 크기: "+photo.getSize());
            logger.info("content type: "+photo.getContentType());
            logger.info("================== file   END ==================");

            String saveFileName = UUID.randomUUID().toString().replaceAll("-", "") + photo.getOriginalFilename();
            target = new File(uploadPath, saveFileName);
            try {
				photo.transferTo(target);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
            //file 처리 :: E
            logger.info("/upload/main/photo/" + saveFileName);
            mainVo.setPhotoUrl("/upload/main/photo/" + saveFileName);
			// DB 로직 구현
            logger.info(mainVo.toString());
			count = (int)mainService.insertTimeline(mainVo);
			logger.info("$$$$$count: "+count);
		}
		if(count == 1) {
			mav.addObject("msg", "success");
		} else {
			mav.addObject("msg", "fail");
		}
		return mav;
	}

	@RequestMapping(value="/main_delete_item.do", method={RequestMethod.POST, RequestMethod.GET})
	public ModelAndView main_delete_item(@ModelAttribute MainVo mainVo, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws RichardException{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");
		int no = Integer.parseInt(request.getParameter("no"));
		mainVo.setNo(no);
		mainVo.setTitle(request.getParameter("title"));
		logger.info("################################"+mainVo.toString());
		int count = (int)mainService.deleteItem(mainVo);
		if(count == 1) {
			mav.addObject("result", "Succ");
		} else {
			mav.addObject("result", "Fail");
		}
		return mav;
	}

	@RequestMapping(value="/main_update_item.do", method={RequestMethod.POST, RequestMethod.GET})
	public ModelAndView main_update_item(@ModelAttribute MainVo mainVo, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws RichardException{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/write_form");
		int no = Integer.parseInt(request.getParameter("no"));
		mainVo.setNo(no);
		logger.info("################################"+mainVo.toString());
		mav.addObject("mainVo", mainService.getMainItem(mainVo));
		mav.addObject("Type","M"); //수정모드
		return mav;
	}

	@RequestMapping(value="/main_update_submit.do", method={RequestMethod.POST, RequestMethod.GET})
	public ModelAndView main_update_submit(@ModelAttribute MainVo mainVo, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws RichardException{
		logger.info(">>>>>>>>  main_update_submit");
		logger.info((String) request.getAttribute("TOKEN_KEY"));
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/write_submit_end"); // 여기서부터 다시 작업
		int count = 0;
		if (TokenMngUtil.isTokenValid(request)) {
			logger.info("@@@@@@@@ : CSRF 공격 방어");
			// 세션 삭제 (세션을 먼저 삭제해야함)
			TokenMngUtil.resetToken(request);

			// 사진이 변경 되었는지 여부부터 확인 후 변경 되었다면 다음 작업 진행.
			// 변경되지 않았다면 그냥 그대로 진행
			// type file 인 input으로 진행이 가능한가? 아니면 hidden으로 photo url input값을 변경해야하는가?
			//file 처리 :: S
			String uploadPath=request.getSession().getServletContext().getRealPath("/upload/main/photo/");
			File target = new File(uploadPath);
			//폴더 없으면 폴더 생성
            if(!target.exists()) target.mkdirs();

	        MultipartFile photo = mainVo.getPhoto(); //나중에 공통함수에 다시 정리할것.
	        logger.info("================== file start ==================");
            logger.info("파일 이름: "+photo.getName());
            logger.info("파일 실제 이름: "+photo.getOriginalFilename());
            logger.info("파일 크기: "+photo.getSize());
            logger.info("content type: "+photo.getContentType());
            logger.info("================== file   END ==================");

            String saveFileName = UUID.randomUUID().toString().replaceAll("-", "") + photo.getOriginalFilename();
            target = new File(uploadPath, saveFileName);
            try {
				photo.transferTo(target);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
            //file 처리 :: E
            logger.info("/upload/main/photo/" + saveFileName);
            mainVo.setPhotoUrl("/upload/main/photo/" + saveFileName);
			// DB 로직 구현
            logger.info(mainVo.toString());
			count = (int)mainService.insertTimeline(mainVo);
			logger.info("$$$$$count: "+count);
		}
		if(count == 1) {
			mav.addObject("msg", "success");
		} else {
			mav.addObject("msg", "fail");
		}
		return mav;
	}

	@RequestMapping(value="/statistics.do", method={RequestMethod.POST, RequestMethod.GET})
	public String statistics(Model model) throws RichardException{
		logger.info(">>>>>>>>  statistics");
		return "statistics/statistics";
	}
	@RequestMapping(value="/member.do", method={RequestMethod.POST, RequestMethod.GET})
	public String member(Model model) throws RichardException{
		logger.info(">>>>>>>>  member");
		return "member/member";
	}
	@RequestMapping(value="/wherecozynail.do", method={RequestMethod.POST, RequestMethod.GET})
	public String place(Model model) throws RichardException{
		logger.info(">>>>>>>>  wherecozynail");
		return "information/map";
	}
	@RequestMapping(value="/rates.do", method={RequestMethod.POST, RequestMethod.GET})
	public String rates(Model model) throws RichardException{
		logger.info(">>>>>>>>  rates");
		return "information/rates";
	}
	@RequestMapping(value="/onevsone.do", method={RequestMethod.POST, RequestMethod.GET})
	public String onevsone(Model model) throws RichardException{
		logger.info(">>>>>>>>  onevsone");
		return "questions/1vs1";
	}
	@RequestMapping(value="/user/EmplyrCreat.do", method={RequestMethod.POST, RequestMethod.GET})
	public String EmplyrCreat(Model model) throws RichardException{
		logger.info(">>>>>>>>  EmplyrCreat");
		return "user/EmplyrCreat";
	}
}
