package com.sinsp.richard.web.calendar.vo;

import lombok.Data;

@Data
public class CalendarVo {
    String reserveNo;		//예약번호
    String userNo;		//고객번호
    String reserveTime;		//예약시간
    String workState;		//시술종류
    String otherInfo;		//기타사항
    String payState;		//결재유형
    String payPrice;		//결재금액
    String workerCode;		//시술자 코드
    String createDate;		//등록 일자
    String updateDate;		//수정 일자
    String reserveDate;		//예약 일자
    String userNM;
    String workNM;
}
