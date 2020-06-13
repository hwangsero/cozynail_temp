
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
		//<insert> 사용시 리턴값은 정상 일경우 null 값이 리턴됩니다.- iBatis 기준 ? 확인 필요.
		Object obj = insert(prefix + "insertJoinUser", vo);
		log.info(obj);
		if(obj == null) {
			return true;
		}
		return false;
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