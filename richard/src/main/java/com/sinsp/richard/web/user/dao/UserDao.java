package com.sinsp.richard.web.user.dao;

import org.springframework.stereotype.Repository;

import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.user.vo.UserVo;
import com.sinsp.richard.common.dao.CommonSqlDao;

@Repository //이부분에 선언해야한다고 메모해놓고 선언 안하는 실수를 바로 함;;;;;;;;
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

}
