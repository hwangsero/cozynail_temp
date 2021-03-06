package com.sinsp.richard.web.main.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.sinsp.richard.common.exception.DBException;
import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.main.dao.MainDao;
import com.sinsp.richard.web.main.service.MainService;
import com.sinsp.richard.web.main.vo.MainVo;
import com.sinsp.richard.web.user.dao.UserDao;
import com.sinsp.richard.web.user.service.UserService;
import com.sinsp.richard.web.user.vo.UserVo;


@Service  //이렇게 선언하는 버릇을 안들이면 서버 올렸을때 에러뜨고 원인 찾기가 아주 힘듬.
public class MainServiceImpl implements MainService{

	@Autowired
	private MainDao mainDao;

	@Override
	public ArrayList<MainVo> getMainList() throws RichardException{
		return (ArrayList<MainVo>) mainDao.getMainList();
	}

	public Object insertTimeline(MainVo vo) throws RichardException{
		return mainDao.insertTimeline(vo);
	}

	public Object deleteItem(MainVo vo) throws RichardException{
		return mainDao.deleteItem(vo);
	}

	public Object updateItem(MainVo vo) throws RichardException{
		return mainDao.updateItem(vo);
	}

	public Object getMainItem(MainVo vo) throws RichardException{
		return mainDao.getMainItem(vo);
	}
}