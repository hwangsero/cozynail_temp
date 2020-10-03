package com.sinsp.richard.web.calendar.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.calendar.dao.DetailDao;
import com.sinsp.richard.web.calendar.service.DetailService;
import com.sinsp.richard.web.reservation.vo.ReserveVo;

@Service
public class DetailServiceImpl implements DetailService{

	@Autowired
	DetailDao detailDao;

	@Override
	public List<ReserveVo> getReserveInfo(ReserveVo vo) throws RichardException {
		return detailDao.getReserveInfo(vo);
	}

}
