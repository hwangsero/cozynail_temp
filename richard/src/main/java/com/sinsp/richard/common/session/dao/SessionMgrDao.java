
package com.sinsp.richard.common.session.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.user.vo.UserVo;
import com.sinsp.richard.common.dao.CommonSqlDao;

@Repository
public class SessionMgrDao extends CommonSqlDao{

	/** NameSpace 정의 */
	private static String prefix = "SessionMgrMapper.";

	public List<String> getPageList() {
		return selectList(prefix + "");
	}

}