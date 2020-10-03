package com.sinsp.richard.web.reservation.vo;

import java.util.List;

import com.sinsp.richard.web.comm.vo.PayMasterVo;
import com.sinsp.richard.web.comm.vo.WorkMasterVo;
import com.sinsp.richard.web.comm.vo.WorkerMasterVo;

import lombok.Data;

@Data
public class ReserveFormVo {
	List<WorkMasterVo> workMasterList;
	List<WorkerMasterVo> workerMasterList;
	List<PayMasterVo> payMasterList;
}
