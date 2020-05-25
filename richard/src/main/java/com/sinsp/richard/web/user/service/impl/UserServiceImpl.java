package com.sinsp.richard.web.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.sinsp.richard.common.exception.DBException;
import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.user.dao.UserDao;
import com.sinsp.richard.web.user.service.UserService;
import com.sinsp.richard.web.user.vo.UserVo;


@Service  //이렇게 선언하는 버릇을 안들이면 서버 올렸을때 에러뜨고 원인 찾기가 아주 힘듬.
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;

	@Override
	public void getUserList() {
		userDao.getUserList();
	}

	@Override
	public void insertLog(UserVo vo) throws RichardException{
		userDao.insertLog(vo);

//		try {
//			userDao.insertLog(vo);
//		} catch (Exception e){
//			if(e instanceof Exception) {
//				new DBException("DB EXCEPTION", e);
//				// rollback 수동작업하고 싶을때 아래와 같이
//				TransactionAspectSupport.currentTransactionStatus();
//				//api 다 까보래. 읽어보래.
//			} else {
//				new RichardException("Exception", e);
//			}
//		}
	}

	// 트랜잭션도 셋팅 해줘야 작동 함...
	// error 시 트랜잭션 작동하도록 셋팅할 생각일때 할 수 있는 방법

}