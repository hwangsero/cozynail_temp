package com.sinsp.richard.web.reservation.service;

import java.util.List;

import com.sinsp.richard.web.comm.vo.UserMasterVo;
import com.sinsp.richard.web.reservation.vo.ReserveFormVo;
import com.sinsp.richard.web.reservation.vo.ReserveVo;

public interface ReserveService {
	public ReserveFormVo getReserveFormVoList();
	public List<UserMasterVo> getUserInfoList();
	public void insertReservation(ReserveVo reserveVo, String[] selectedWorks);
	public ReserveVo getReservationDetail(int reserveVo);
	public void deleteReservation(int reserveNo);
	public void updateReservation(ReserveVo reserveVo, String[] selectedWorks);
}
