package com.sinsp.richard.web.reservation.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sinsp.richard.web.comm.vo.UserMasterVo;
import com.sinsp.richard.web.reservation.service.ReserveFormService;
import com.sinsp.richard.web.reservation.vo.ReserveFormVo;

@Controller
public class ReservationController {

	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);

	@Autowired
	private ReserveFormService reserveFormService;

    @GetMapping(value = "/registerReservation.do")
    public ModelAndView registerReservation() {
    	ReserveFormVo reserveFormVo = reserveFormService.getReserveFormVoList();
    	ModelAndView mav = new ModelAndView();
    	mav.addObject("reserveFormInfo", reserveFormVo);
    	mav.setViewName("reservation/reservationForm");
    	return mav;
    }

    @ResponseBody
    @GetMapping(value = "/userInfo.do")
    public List<UserMasterVo> getUserInfo() {
    	return reserveFormService.getUserInfoList();
    }
}
