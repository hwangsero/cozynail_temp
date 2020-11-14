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

	// 해당 예약의 예약정보 insert
		public int insertReservation(ReserveVo reserveVo) {
			insert(prefix + "insertReservation", reserveVo);
			return reserveVo.getReserveNo();
		}

	// 해당 예약의 시술내역 전체 insert
	public void insertWork(List<Map<String,Integer>> works) {
		insert(prefix + "insertWorks", works);
	}

	// 예약번호에 해당하는 예약 상세 정보 select
	public ReserveVo selectReservationDetail(int reserveNo) {
		return (ReserveVo)selectOne(prefix + "selectReservationDetail", reserveNo);
	}

	// 예약번호에 해당하는 예약된 시술종류 select
	public List<String> selectReservationWorks(int reserveNo) {
		return selectList(prefix + "selectReservationWorks", reserveNo);
	}
}
