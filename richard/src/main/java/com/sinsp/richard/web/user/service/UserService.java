package com.sinsp.richard.web.user.service;

import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.user.vo.UserVo;

public interface UserService {

	public void getUserList();

	// 디폴트는 public이지만 그래도 선언해서 명시해주는 것이 좋다.
	public void insertLog(UserVo vo) throws RichardException;

	public UserVo getUserInfo(String id) throws RichardException;

	public boolean login(UserVo userVo) throws RichardException;
}
