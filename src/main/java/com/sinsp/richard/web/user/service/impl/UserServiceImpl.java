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
		//userDao.insertLog(vo);

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

	@Override
	public UserVo getUserInfo(String id) {
		return userDao.getUserInfo(id);
	}

	@Override
	public boolean login(UserVo userVo){
		boolean tf = false;
		System.out.println("login 가능한 아이디 인지 먼저 체크: "+ this.getUserIdCount(userVo.getId()));
		if(this.getUserIdCount(userVo.getId()) == 1) {
			tf = true;
		}
		//비밀번호 검증
		UserVo user = userDao.getUserInfo(userVo.getId());
		System.out.println(user);
		if(!user.getPassword().equals(userVo.getPassword())) {
			tf = false;
		}
		return tf;
	}

	@Override
	public boolean insertJoinUser(UserVo vo) throws RichardException {
		return userDao.insertJoinUser(vo);
	}

	@Override
	public int getUserIdCount(String id) {
		return userDao.getUserIdCount(id);
	}

}