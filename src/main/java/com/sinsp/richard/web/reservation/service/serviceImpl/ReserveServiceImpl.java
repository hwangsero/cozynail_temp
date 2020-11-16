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

	// 예약 등록 페이지 정보 가져오기
	@Override
	public ReserveFormVo getReserveFormVoList() {
		ReserveFormVo reserveFormVo = new ReserveFormVo();
		reserveFormVo.setWorkMasterList(commDao.getWorkMasterVoList());
		reserveFormVo.setWorkerMasterList(commDao.getWorkerMasterVoList());
		reserveFormVo.setPayMasterList(commDao.getPayMasterVoList());
		return reserveFormVo;
	}

	// 예약 등록
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

	// 예약 상세 정보 가져오기
	@Override
	public ReserveVo getReservationDetail(int reserveNo) {
		ReserveVo reserveVo = reserveDao.selectReservationDetail(reserveNo);
		reserveVo.setReserveWorks(reserveDao.selectReservationWorks(reserveNo));
		return reserveVo;
	}

	// 예약 정보 수정
	@Override
	public void updateReservation(ReserveVo reserveVo, String[] selectedWorks) {
		reserveDao.updateReservation(reserveVo);
		int reserveNo = reserveVo.getReserveNo();
		List<Map<String,Integer>> works = new LinkedList<>();
		for(int i = 0; i < selectedWorks.length; i++) {
			Map<String, Integer> work = new HashMap<>();
			work.put("reserveNo", reserveNo);
			work.put("workNo", Integer.parseInt(selectedWorks[i]));
			works.add(work);
		}
		reserveDao.deleteReservationWorks(reserveNo);
		reserveDao.insertWork(works);
	}

	// 예약 삭제
	@Override
	public void deleteReservation(int reserveNo) {
		reserveDao.deleteReservation(reserveNo);
		reserveDao.deleteReservationWorks(reserveNo);
	}

	// 회원 정보 가져오기
	@Override
	public List<UserMasterVo> getUserInfoList() {
		return commDao.getUserMasterVoList();
	}
}
