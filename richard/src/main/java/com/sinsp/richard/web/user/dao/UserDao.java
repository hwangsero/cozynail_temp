package com.sinsp.richard.web.user.dao;

import org.springframework.stereotype.Repository;

import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.user.vo.UserVo;
import com.sinsp.richard.common.dao.CommonSqlDao;

@Repository
public class UserDao extends CommonSqlDao{

	/** NameSpace 정의 */
	private static String prefix = "UserMapper.";// /src/main/resources/sql/com/UserMapper.xml

	public void insertLog(UserVo vo) throws RichardException{
		insert(prefix + "insertLog1", vo);
		insert(prefix + "insertLog2", vo);
		insert(prefix + "insertLog3", vo);
	}

	public void getUserList() {
		System.out.println(">>>>>>>>>>>>>>> sql sql");
	}

	public UserVo getUserInfo(String id) {
		UserVo userVo = new UserVo();
		selectOne(prefix + "", id);
		return userVo;
	}

	public Boolean login(UserVo userVo) {
		if(getSelect(prefix + "", userVo) == 1) {
			return true;
		}
		return false;
	}

}
