package com.sinsp.richard.web.main.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sinsp.richard.common.dao.CommonSqlDao;
import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.main.vo.MainVo;

@Repository
public class MainDao extends CommonSqlDao{

	/** NameSpace 정의 */
	private static String prefix = "MainMapper.";// /src/main/resources/sql/com/MainMapper.xml

	public Object insertTimeline(MainVo vo) throws RichardException{
		//<insert> 사용시 리턴값은 정상 일경우 null 값이 리턴됩니다.- iBatis 기준 ? 확인 필요.
		Object obj = insert(prefix + "insertTimeline", vo);
		log.info("insertTimeline mainDao: obj : " + obj);
		return obj;
	}

	public List<MainVo> getMainList() throws RichardException{
		return selectList(prefix + "getMainList");
	}

	public Object deleteItem(MainVo vo) throws RichardException{
		Object obj = delete(prefix + "deleteMainItem", vo);
		log.info("deleteMainItem mainDao: obj : " + obj);
		return obj;
	}

	public Object updateItem(MainVo vo) throws RichardException{
		Object obj = new Object();//update(prefix + "deleteMainItem", vo);
		log.info("updateItem mainDao: obj : " + obj);
		return obj;
	}

	public Object getMainItem(MainVo vo) throws RichardException{
		return selectOne(prefix + "getMainItem", vo);
	}

}
