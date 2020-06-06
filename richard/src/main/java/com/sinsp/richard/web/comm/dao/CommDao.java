package com.sinsp.richard.web.comm.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sinsp.richard.common.dao.CommonSqlDao;

@Repository
public class CommDao extends CommonSqlDao{

	/** NameSpace 정의 */
	private static String prefix = "CommMapper.";

	public void getMainList() {
		System.out.println(">>>>>>>>>>>>>>> Comm sql");
	}

	public List<String> getPageList() {
		return selectList(prefix + "getPages");
	}
}
