package com.sinsp.richard.web.calendar.service;

import java.util.List;

import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.calendar.vo.reserveVO;

public interface DetailService {
	public List<reserveVO> getReserveInfo(reserveVO vo) throws RichardException;
}
