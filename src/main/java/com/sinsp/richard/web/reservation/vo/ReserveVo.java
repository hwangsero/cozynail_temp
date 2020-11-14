package com.sinsp.richard.web.reservation.vo;
import java.util.List;

import com.sinsp.richard.web.comm.vo.WorkMasterVo;

import lombok.Data;

@Data
public class ReserveVo {

	int reserveNo;
	int userNo;
	int workerNo;
	List<String> reserveWorks;
	String reserveDate;
	String reserveTime;
	String userNm;
	String userTel;
	String payState;
	String payNm;
	String payPrice;
	String otherInfo;
	String workerNm;
	String workerTel;
	String createDate;
	String updateDate;
	String mileage;
}

