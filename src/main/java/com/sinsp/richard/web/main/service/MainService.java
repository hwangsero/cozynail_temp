package com.sinsp.richard.web.main.service;

import java.util.ArrayList;

import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.main.vo.MainVo;

public interface MainService {
	public ArrayList<MainVo> getMainList() throws RichardException;
	public Object insertTimeline(MainVo vo) throws RichardException;
	public Object deleteItem(MainVo vo) throws RichardException;
	public Object updateItem(MainVo vo) throws RichardException;
	public Object getMainItem(MainVo vo) throws RichardException;
}
