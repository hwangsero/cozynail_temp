package com.sinsp.richard.web.reservation.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.sinsp.richard.web.comm.vo.UserMasterVo;
import com.sinsp.richard.web.reservation.service.ReserveService;
import com.sinsp.richard.web.reservation.vo.ReserveFormVo;
import com.sinsp.richard.web.reservation.vo.ReserveVo;

/**
 * 예약 Controller
 *
 * @author 황세로
 * @since 2020. 10. 17. 오후 18:17:07
 * @version 1.0
 * @see
 *
 *      <pre>
 * << 개정이력(Modification Information) >>
 *
 *  수정일            수정자                               수정내용
 *  -------        --------    ---------------------------
 * 2020. 10. 17.   황세로                                    최초생성
 *
 * </pre>
 */
//@RestController

@Controller
public class ReservationController {

	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);

	@Autowired
	private ReserveService reserveService;

	// 예약 등록 페이지 화면
    @GetMapping(value = "reservation/register.do")
    public ModelAndView registerReservationForm() {
    	ReserveFormVo reserveFormVo = reserveService.getReserveFormVoList();
    	ModelAndView mav = new ModelAndView();
    	mav.addObject("reserveFormInfo", reserveFormVo);
    	mav.setViewName("reservation/reservationForm");
    	return mav;
    }

    // 예약 등록
    @PostMapping(value = "reservation.do")
    public String registerReservation(HttpServletRequest request) {
    	ReserveVo reserveVo = new ReserveVo();
    	reserveVo.setUserNo(Integer.parseInt(request.getParameter("userNo")));
    	reserveVo.setWorkerNo(Integer.parseInt(request.getParameter("workerNo")));
    	reserveVo.setPayState(request.getParameter("payState"));
    	reserveVo.setReserveDate(request.getParameter("reserveDate"));
    	reserveVo.setReserveTime(request.getParameter("reserveTime"));
    	reserveVo.setUserNm(request.getParameter("userNm"));
    	reserveVo.setUserTel(request.getParameter("userTel"));
    	reserveVo.setOtherInfo(request.getParameter("otherInfo"));
    	reserveVo.setPayPrice(request.getParameter("payPrice").replace(",", ""));
    	String[] selectedWorks = request.getParameterValues("workNo");
    	reserveService.insertReservation(reserveVo, selectedWorks);
    	return "redirect:/calendar.do";
    }

    // 예약 상세 정보 페이지
    @GetMapping(value = "reservation.do")
    public ModelAndView reservationDetail(@RequestParam int reserveNo) {
    	System.out.println("get");
    	ModelAndView mav = new ModelAndView();
    	ReserveVo reserveVo = reserveService.getReservationDetail(reserveNo);
    	mav.addObject("reserveInfo", reserveVo);
    	mav.setViewName("reservation/reservationDetail");
    	return mav;
    }

    // 예약 수정 페이지 화면
    @GetMapping(value = "reservation/updateForm.do")
    public ModelAndView reservationUpdateForm(@RequestParam int reserveNo) {
    	ModelAndView mav = new ModelAndView();
    	ReserveVo reserveVo = reserveService.getReservationDetail(reserveNo);
    	ReserveFormVo reserveFormVo = reserveService.getReserveFormVoList();
    	mav.addObject("reserveFormInfo", reserveFormVo);
    	mav.addObject("reserveInfo", reserveVo);
    	mav.setViewName("reservation/reservationUpdateForm");
    	return mav;
    }

    // 예약 수정
    @PostMapping(value = "reservation/update.do")
    public String UpdateReservation(HttpServletRequest request) {
    	ReserveVo reserveVo = new ReserveVo();
    	reserveVo.setReserveNo(Integer.parseInt(request.getParameter("reserveNo")));
    	reserveVo.setUserNo(Integer.parseInt(request.getParameter("userNo")));
    	reserveVo.setWorkerNo(Integer.parseInt(request.getParameter("workerNo")));
    	reserveVo.setPayState(request.getParameter("payState"));
    	reserveVo.setReserveDate(request.getParameter("reserveDate"));
    	reserveVo.setReserveTime(request.getParameter("reserveTime"));
    	reserveVo.setUserNm(request.getParameter("userNm"));
    	reserveVo.setUserTel(request.getParameter("userTel"));
    	reserveVo.setOtherInfo(request.getParameter("otherInfo"));
    	reserveVo.setPayPrice(request.getParameter("payPrice").replace(",", ""));
    	String[] selectedWorks = request.getParameterValues("workNo");
    	reserveService.updateReservation(reserveVo, selectedWorks);
    	return "redirect:/reservation.do?reserveNo=" + reserveVo.getReserveNo();
    }

    // 예약 삭제
    @GetMapping(value = "reservation/delete.do")
    public String DeleteReservation(@RequestParam int reserveNo) {
    	reserveService.deleteReservation(reserveNo);
    	return "redirect:/calendar.do";
    }

    // 회원 정보 가져오기
    @ResponseBody
    @GetMapping(value = "reservation/userInfo.do")
    public List<UserMasterVo> getUserInfo() {
    	return reserveService.getUserInfoList();
    }
}
