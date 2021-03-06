package com.sinsp.richard.web.main.vo;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MainVo implements Serializable{

	private static final long serialVersionUID = 2667340231752180156L;

	private int no; // 글번호
	private String title; // 제목
	private String photoUrl; // 사진
	private String content; // 내용
	private String userId; // 작성자 아이디
	private String userNm; // 작성자 이름
	private String color; // 핀 색깔
	private String createDate; // 등록일자
	private String updateDate; // 수정일자

	MultipartFile photo;

	/* color
	 	GN(그린)
		SK(스카이)
		BL(블루)
		RE(레드)
		OR(오렌지)
		GR(그레이)
		*/
}