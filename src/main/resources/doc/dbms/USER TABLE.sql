CREATE TABLE `user_master` (
  `USER_NO` varchar(4) NOT NULL COMMENT '고객번호',
  `USER_ID` varchar(20) not null COMMENT '아이디',
  `USER_PW` varchar(128) NOT NULL COMMENT '비밀번호',
  `USER_NM` varchar(20) DEFAULT NULL COMMENT '이름',
  `USER_TEL` varchar(20) DEFAULT NULL COMMENT '연락처',
  `MILEAGE` varchar(4) DEFAULT NULL COMMENT '마일리지',
  `USER_RANK` char(1) DEFAULT NULL COMMENT '유저등급',
  `GENDER` varchar(1) NOT NULL COMMENT '성별',
  `BIRTHDATE` varchar(10) DEFAULT NULL COMMENT '생일',
  `CREATE_DATE` date DEFAULT NULL COMMENT '등록일자',
  `UPDATE_DATE` date DEFAULT NULL COMMENT '수정일자',
  PRIMARY KEY (`USER_NO`)
) COMMENT='회원'

A-admin
G-general