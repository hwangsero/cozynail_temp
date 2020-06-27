package com.sinsp.richard.web.calendar.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sinsp.richard.common.dao.CommonSqlDao;
import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.calendar.vo.reserveVO;

@Repository
public class DetailDao extends CommonSqlDao{

	private static String prefix = "DetailMapper.";

	public List<reserveVO> getReserveInfo(reserveVO vo) throws RichardException {

		return selectList( prefix + "getReserveInfo", vo);
	}

}
