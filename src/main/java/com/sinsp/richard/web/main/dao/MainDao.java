package com.sinsp.richard.web.main.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.sinsp.richard.common.dao.CommonSqlDao;
import com.sinsp.richard.web.main.vo.MainVo;

@Repository //이부분에 선언해야한다고 메모해놓고 선언 안하는 실수를 바로 함;;;;;;;;
public class MainDao extends CommonSqlDao{

	public ArrayList<MainVo> getMainList() {
		ArrayList<MainVo> list = new ArrayList<MainVo>();
		System.out.println(">>>>>>>>>>>>>>> ArrayList<MainVo>");
		return list;
	}

}
