package com.sinsp.richard.web.calendar.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sinsp.richard.common.dao.CommonSqlDao;
import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.reservation.vo.ReserveVo;

@Repository
public class DetailDao extends CommonSqlDao{

	private static String prefix = "DetailMapper.";

	public List<ReserveVo> getReserveInfo(ReserveVo vo) throws RichardException {
		return selectList( prefix + "getReserveInfo", vo);
	}

}
