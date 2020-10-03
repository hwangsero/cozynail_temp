package com.sinsp.richard.web.comm.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sinsp.richard.common.dao.CommonSqlDao;
import com.sinsp.richard.web.comm.vo.PayMasterVo;
import com.sinsp.richard.web.comm.vo.WorkMasterVo;
import com.sinsp.richard.web.comm.vo.WorkerMasterVo;

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

	// WorkMaster 전체 Select
	public List<WorkMasterVo> getWorkMasterVoList() {
		return selectList(prefix + "getWorkMasterVoList");
	}

	// WorkerMaster 전체 Select
	public List<WorkerMasterVo> getWorkerMasterVoList() {
		return selectList(prefix + "getWorkerMasterVoList");
	}

	// PayMaster 전체 Select
	public List<PayMasterVo> getPayMasterVoList() {
		return selectList(prefix + "getPayMasterVoList");
	}
}
