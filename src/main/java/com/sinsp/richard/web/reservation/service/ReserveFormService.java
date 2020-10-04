package com.sinsp.richard.web.reservation.service;

import java.util.List;

import com.sinsp.richard.web.comm.vo.UserMasterVo;
import com.sinsp.richard.web.reservation.vo.ReserveFormVo;

public interface ReserveFormService {
	public ReserveFormVo getReserveFormVoList();
	public List<UserMasterVo> getUserInfoList();
}
