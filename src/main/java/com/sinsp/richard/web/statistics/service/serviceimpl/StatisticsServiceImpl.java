package com.sinsp.richard.web.statistics.service.serviceimpl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.statistics.dao.StatisticsDao;
import com.sinsp.richard.web.statistics.service.StatisticsService;

@Service("statisticsService")
public class StatisticsServiceImpl implements StatisticsService {
	@Resource(name = "statisticsDAO")
	public StatisticsDao statisticsDAO;

	@Override
	public Map<String, Object> getYearList(Map<String, Object> map) throws RichardException {
		return statisticsDAO.getYearList(map);
	}

}
