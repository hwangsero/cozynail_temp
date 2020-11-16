package com.sinsp.richard.web.reservation.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sinsp.richard.common.dao.CommonSqlDao;
import com.sinsp.richard.web.reservation.vo.ReserveVo;

@Repository
public class ReserveDao extends CommonSqlDao{

	/** NameSpace 정의 */
	private static String prefix = "ReservationMapper.";

	// 해당 예약의 예약정보 삽입 insert
		public int insertReservation(ReserveVo reserveVo) {
			insert(prefix + "insertReservation", reserveVo);
			return reserveVo.getReserveNo();
		}

	// 해당 예약의 시술내역 전체 삽입 insert
	public void insertWork(List<Map<String,Integer>> works) {
		insert(prefix + "insertWorks", works);
	}

	// 예약번호에 해당하는 예약 상세 정보 조회 select
	public ReserveVo selectReservationDetail(int reserveNo) {
		return (ReserveVo)selectOne(prefix + "selectReservationDetail", reserveNo);
	}

	// 예약번호에 해당하는 예약된 시술종류 조회 select
	public List<String> selectReservationWorks(int reserveNo) {
		return selectList(prefix + "selectReservationWorks", reserveNo);
	}

	// 예약 정보 수정 update
	public void updateReservation(ReserveVo reserveVo) {
		update(prefix + "updateReservation", reserveVo);
	}

	// 예약 정보 삭제 delete
	public void deleteReservation(int reserveNo) {
		delete(prefix + "deleteReservation", reserveNo);
	}

	// 예약번호에 해당하는 예약된 시술종류 삭제 delete
	public void deleteReservationWorks(int reserveNo) {
		delete(prefix + "deleteReservationWorks", reserveNo);
	}
}
