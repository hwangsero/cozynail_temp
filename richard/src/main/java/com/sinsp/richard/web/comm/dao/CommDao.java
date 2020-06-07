package com.sinsp.richard.web.comm.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sinsp.richard.common.dao.CommonSqlDao;

@Repository
public class CommDao extends CommonSqlDao{

	/** NameSpace 정의 */
	private static String prefix = "CommMapper.";

	// Exclude 페이지 목록
	public List<String> getPageList() {
		return selectList(prefix + "getPages");
	}

	// navigation 카테고리 목록
	public List<String> getCateList() {
		return selectList(prefix + "getCategory");
	}
}
