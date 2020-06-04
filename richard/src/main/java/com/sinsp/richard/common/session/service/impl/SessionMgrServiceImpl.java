package com.sinsp.richard.common.session.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.sinsp.richard.common.exception.DBException;
import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.common.session.dao.SessionMgrDao;
import com.sinsp.richard.common.session.service.SessionMgrService;




@Service  //이렇게 선언하는 버릇을 안들이면 서버 올렸을때 에러뜨고 원인 찾기가 아주 힘듬.
public class SessionMgrServiceImpl implements SessionMgrService{

	@Autowired
	private SessionMgrDao sessionMgrDao;

	@Override
	public List<String> getPageList() throws RichardException {
		return sessionMgrDao.getPageList();
	}

}