package com.sinsp.richard.web.reservation.controller;

import java.util.Enumeration;
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

@Controller
public class ReservationController {

	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);

	@Autowired
	private ReserveService reserveService;

    @GetMapping(value = "reservation/register.do")
    public ModelAndView registerReservationForm() {
    	ReserveFormVo reserveFormVo = reserveService.getReserveFormVoList();
    	ModelAndView mav = new ModelAndView();
    	mav.addObject("reserveFormInfo", reserveFormVo);
    	mav.setViewName("reservation/reservationForm");
    	return mav;
    }

    @PostMapping(value = "reservation/register.do")
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
    	reserveVo.setPayPrice(request.getParameter("payPrice"));
    	String[] selectedWorks = request.getParameterValues("workNo");
    	reserveService.insertReservation(reserveVo, selectedWorks);
    	return "redirect:/calendar.do";
    }

    @GetMapping(value = "reservation/detail.do")
    public ModelAndView reservationDetail(@RequestParam int reserveNo) {
    	ModelAndView mav = new ModelAndView();
    	ReserveVo reserveVo = reserveService.getReservationDetail(reserveNo);
    	System.out.println(reserveVo.toString());
    	mav.addObject("reserveInfo", reserveVo);
    	mav.setViewName("reservation/reservationDetail");
    	return mav;
    }

    @ResponseBody
    @GetMapping(value = "/userInfo.do")
    public List<UserMasterVo> getUserInfo() {
    	return reserveService.getUserInfoList();
    }
}
