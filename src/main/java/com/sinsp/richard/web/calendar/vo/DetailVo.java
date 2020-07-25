package com.sinsp.richard.web.calendar.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class DetailVo implements Serializable {
	private static final long serialVersionUID = 6965053952316178065L;

	private String reserveNo;
	private String reserveTime;
	private String userNm;
	private String userTel;
	private String workNm;
	private String otherInfo;
	private String payState;
	private String workerNm;
	private String mileage;
}
