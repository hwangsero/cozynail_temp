package com.sinsp.richard.web.reservation.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sinsp.richard.web.comm.dao.CommDao;
import com.sinsp.richard.web.comm.vo.UserMasterVo;
import com.sinsp.richard.web.reservation.service.ReserveFormService;
import com.sinsp.richard.web.reservation.vo.ReserveFormVo;

@Service
public class ReserveFormServiceImpl implements ReserveFormService{

	@Autowired
    private CommDao commDao;

	@Override
	public ReserveFormVo getReserveFormVoList() {
		ReserveFormVo reserveFormVo = new ReserveFormVo();
		reserveFormVo.setWorkMasterList(commDao.getWorkMasterVoList());
		reserveFormVo.setWorkerMasterList(commDao.getWorkerMasterVoList());
		reserveFormVo.setPayMasterList(commDao.getPayMasterVoList());
		return reserveFormVo;
	}

	@Override
	public List<UserMasterVo> getUserInfoList() {
		return commDao.getUserMasterVoList();
	}

}
