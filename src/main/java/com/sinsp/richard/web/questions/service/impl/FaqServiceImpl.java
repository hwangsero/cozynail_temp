package com.sinsp.richard.web.questions.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sinsp.richard.web.questions.dao.FaqDao;
import com.sinsp.richard.web.questions.service.FaqService;
import com.sinsp.richard.web.questions.vo.FaqVo;

@Service
public class FaqServiceImpl implements FaqService {
	
	@Autowired
	private FaqDao faqDao;

	@Override
	public List<FaqVo> findListFaq() {
		return faqDao.findListFaq();
	}
}
