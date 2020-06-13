package com.sinsp.richard.web.user.vo;

import java.io.Serializable;

import lombok.Data;
//import lombok.Setter;
//import lombok.ToString;

//변수 선언이 귀찮겠지만 lombok이 이때 사용.
//@Getter
//@Setter
//@ToString
//이 3개를 다 포함하고 있는 것이 Data
@Data
public class UserVo implements Serializable{

	private static final long serialVersionUID = -7240044547872807682L;

	private String id;
	private String password;
	private String name;
	private String nickname;
	private String gender;
	private String birth_date;
	private String phone;
	private String reg_date;
	private String reg_ip;
	private String last_login_ip;
	private String last_login_date;
	private String user_img;
	private String email;
	private String email_yn;
	private String email_cert_yn;
	private String address;

	//class를 decompile하여 확인하면 getter, setter, tostring이 자동으로 생성되어 있는 것을 확인 할 수 있음.
}