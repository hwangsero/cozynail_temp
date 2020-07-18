CREATE TABLE `time_line` (
  `tl_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '타임라인 번호',
  `tl_title` varchar(255) NOT NULL COMMENT '타임라인 제목',
  `tl_photo` varchar(255) DEFAULT NULL COMMENT '타임라인 사진url',
  `tl_content` text COMMENT '타임라인 내용',
  `user_tel` varchar(20) DEFAULT NULL COMMENT '글쓴이 전화번호',
  `user_nm` varchar(20) DEFAULT NULL COMMENT '글쓴이 이름',
  `tl_color` varchar(2) DEFAULT NULL COMMENT '타임라인 색깔',
  `create_date` datetime DEFAULT NULL COMMENT '생성 날짜',
  `update_date` datetime DEFAULT NULL COMMENT '수정 날짜',
  PRIMARY KEY (`tl_no`)
) COMMENT='타임라인'

-------------------------------------------------------------

CREATE TABLE `tb_file` (
  `IDX` int(11) NOT NULL AUTO_INCREMENT,
  `BOARD_IDX` int(11) NOT NULL,
  `ORG_FILE_NAME` varchar(260) NOT NULL,
  `SAVE_FILE_NAME` varchar(36) NOT NULL,
  `FILE_SIZE` int(11) DEFAULT NULL,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREA_ID` varchar(30) NOT NULL,
  `DEL_CHK` varchar(1) NOT NULL DEFAULT 'N',
  `CREA_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

출처: https://to-dy.tistory.com/95 [todyDev]
파일업로드 참고용


