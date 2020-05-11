package com.sinsp.richard.web.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sinsp.richard.web.user.dao.UserDao;
import com.sinsp.richard.web.user.service.UserService;


@Service  //이렇게 선언하는 버릇을 안들이면 서버 올렸을때 에러뜨고 원인 찾기가 아주 힘듬.
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;

	@Override
	public void getUserList() {
		userDao.getUserList();
	}

}