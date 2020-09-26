
package com.sinsp.richard.web.user.dao;

import org.springframework.stereotype.Repository;

import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.user.vo.UserVo;
import com.sinsp.richard.common.dao.CommonSqlDao;

@Repository
public class UserDao extends CommonSqlDao{

	/** NameSpace 정의 */
	private static String prefix = "UserMapper.";// /src/main/resources/sql/com/UserMapper.xml

	public boolean insertJoinUser(UserVo vo) throws RichardException{
		Object obj = insert(prefix + "insertJoinUser", vo);
		log.info(obj);
		if(obj != null) {
			return true;
		}
		return false;
	}

	public UserVo getUserInfo(String id) {
		UserVo userVo = (UserVo) selectOne(prefix + "getUserInfo", id);
		return userVo;
	}

	public int getUserIdCount(String id) {
		int count = 0;
		count = getSelect(prefix + "getUserIdCount", id);
		return count;
	}

	public void getUserList() {
		System.out.println(">>>>>>>>>>>>>>> sql getUserList");
	}

}