package com.sinsp.richard.common.session.service;

import java.util.List;

import com.sinsp.richard.common.exception.RichardException;


public interface SessionMgrService {
	public List<String> getPageList() throws RichardException;
}
