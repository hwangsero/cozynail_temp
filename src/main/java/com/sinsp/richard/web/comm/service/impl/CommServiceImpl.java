package com.sinsp.richard.web.comm.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.sinsp.richard.web.comm.dao.CommDao;
import com.sinsp.richard.web.comm.service.CommService;


@Service  //이렇게 선언하는 버릇을 안들이면 서버 올렸을때 에러뜨고 원인 찾기가 아주 힘듬.
public class CommServiceImpl implements CommService{

	@Autowired
	private CommDao commDao;

	@Override
	public List<String> getPageList() {
		List<String> str = new ArrayList<String>();
		str = commDao.getPageList();
		return str;
	}
}