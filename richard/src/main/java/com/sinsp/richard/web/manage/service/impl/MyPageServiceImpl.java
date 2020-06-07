package com.sinsp.richard.web.manage.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sinsp.richard.web.manage.dao.MyPageDao;
import com.sinsp.richard.web.manage.service.MyPageService;


@Service
public class MyPageServiceImpl implements MyPageService{

	@Autowired
	private MyPageDao myPageDao;

	@Override
	public void findMyPageMainInfo() {
		myPageDao.findMyPageMainInfo();
	}

	@Override
	public void findListActive() {
		// TODO Auto-generated method stub
	}

	@Override
	public void findListLikeUser() {
		// TODO Auto-generated method stub
	}
}