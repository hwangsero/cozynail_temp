CREATE TABLE `user` (
  `id` varchar(45) NOT NULL COMMENT '아이디',
  `password` varchar(45) NOT NULL COMMENT '비밀번호',
  `name` varchar(40) NOT NULL COMMENT '이름',
  `nickname` varchar(40) NOT NULL COMMENT '별명',
  `gender` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '성별',
  `birth_date` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '생일',
  `phone` varchar(12) NOT NULL COMMENT '전화번호',
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일자',
  `reg_ip` varchar(45) NOT NULL COMMENT '동록ip',
  `last_login_ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '최종로그인ip',
  `last_login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '최종로그인일자',
  `user_img` varchar(300) DEFAULT NULL COMMENT '프로필사진',
  `email` varchar(320) NOT NULL COMMENT '이메일',
  `email_yn` varchar(1) NOT NULL DEFAULT 'N' COMMENT '이메일수신여부',
  `email_cert_yn` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N' COMMENT '이메일인증여부',
  `address` varchar(300) DEFAULT NULL COMMENT '주소',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci