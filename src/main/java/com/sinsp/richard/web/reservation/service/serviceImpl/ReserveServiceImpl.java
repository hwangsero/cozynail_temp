package com.sinsp.richard.web.reservation.service.serviceImpl;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sinsp.richard.web.comm.dao.CommDao;
import com.sinsp.richard.web.comm.vo.UserMasterVo;
import com.sinsp.richard.web.reservation.dao.ReserveDao;
import com.sinsp.richard.web.reservation.service.ReserveService;
import com.sinsp.richard.web.reservation.vo.ReserveFormVo;
import com.sinsp.richard.web.reservation.vo.ReserveVo;

@Service
public class ReserveServiceImpl implements ReserveService{

	@Autowired
    private ReserveDao reserveDao;
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

	@Override
	public void insertReservation(ReserveVo reserveVo, String[] selectedWorks) {
		int reserveNo = reserveDao.insertReservation(reserveVo);
		List<Map<String,Integer>> works = new LinkedList<>();
		for(int i = 0; i < selectedWorks.length; i++) {
			Map<String, Integer> work = new HashMap<>();
			work.put("reserveNo", reserveNo);
			work.put("workNo", Integer.parseInt(selectedWorks[i]));
			works.add(work);
		}
		reserveDao.insertWork(works);
	}

	@Override
	public ReserveVo getReservationDetail(int reserveNo) {
		ReserveVo reserveVo = reserveDao.selectReservationDetail(reserveNo);
		reserveVo.setReserveWorks(reserveDao.selectReservationWorks(reserveNo));
		return reserveVo;
	}

}
