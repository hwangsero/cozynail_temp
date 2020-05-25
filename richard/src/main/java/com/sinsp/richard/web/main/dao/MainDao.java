package com.sinsp.richard.web.main.dao;

import org.springframework.stereotype.Repository;

import com.sinsp.richard.common.dao.CommonSqlDao;

@Repository //이부분에 선언해야한다고 메모해놓고 선언 안하는 실수를 바로 함;;;;;;;;
public class MainDao extends CommonSqlDao{

	public void getMainList() {
		System.out.println(">>>>>>>>>>>>>>> sql sql");
	}

}
