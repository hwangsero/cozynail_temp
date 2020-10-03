package com.sinsp.richard.web.calendar.service;

import java.util.List;

import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.reservation.vo.ReserveFormVo;
import com.sinsp.richard.web.reservation.vo.ReserveVo;

public interface DetailService {
	public List<ReserveVo> getReserveInfo(ReserveVo vo) throws RichardException;
}
