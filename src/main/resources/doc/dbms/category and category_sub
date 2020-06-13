CREATE TABLE category (
	`category_no` int(11) AUTO_INCREMENT NOT NULL COMMENT '카테고리번호',
	`seqno` int(11) DEFAULT 0 NOT NULL COMMENT '출력 순서',
	`category_name` varchar(30) not null COMMENT '카테고리명',
	`visible` varchar(1) DEFAULT 'G' NOT NULL COMMENT '권한별카테고리노출',
	`reg_id` varchar(100) DEFAULT 'admin' NOT NULL COMMENT '등록아이디',
	`reg_date` timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL COMMENT '등록날짜',
	PRIMARY KEY (`category_no`)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci
COMMENT='카테고리 테이블';

INSERT INTO category(seqno, category_name, visible, reg_id, reg_date)
VALUES(1, '마이페이지', 'G', 'admin', CURRENT_TIMESTAMP);

INSERT INTO category(seqno, category_name, visible, reg_id, reg_date)
VALUES(2, '커리큘럼 카테고리', 'G', 'admin', CURRENT_TIMESTAMP);

INSERT INTO category(seqno, category_name, visible, reg_id, reg_date)
VALUES(3, '관리자페이지', 'A', 'admin', CURRENT_TIMESTAMP);


CREATE TABLE `category_sub` (
  `cate_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '서브 카테고리번호',
  `category_no` int(11) NOT NULL COMMENT '카테고리번호',
  `seqno` int(11) NOT NULL DEFAULT '0' COMMENT '출력 순서',
  `cate_nm` varchar(30) NOT NULL COMMENT '카테고리명',
  `visible` varchar(1) NOT NULL DEFAULT 'G' COMMENT '권한별카테고리노출',
  `reg_id` varchar(100) NOT NULL DEFAULT 'admin' COMMENT '등록아이디',
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록날짜',
  PRIMARY KEY (`cate_no`),
  foreign key (`category_no`) references `category`(`category_no`) on update cascade
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci
COMMENT='카테고리 서브 테이블';


INSERT INTO category_sub(category_no, seqno, cate_nm, visible, reg_id, reg_date)
VALUES(1,1, '커리큘럼 관리', 'G', 'admin', CURRENT_TIMESTAMP);
INSERT INTO category_sub(category_no, seqno, cate_nm, visible, reg_id, reg_date)
VALUES(1,2, '나의 커리큘럼 관리', 'G', 'admin', CURRENT_TIMESTAMP);
INSERT INTO category_sub(category_no, seqno, cate_nm, visible, reg_id, reg_date)
VALUES(1,3, '즐겨찾는 회원', 'G', 'admin', CURRENT_TIMESTAMP);

INSERT INTO category_sub(category_no, seqno, cate_nm, visible, reg_id, reg_date)
VALUES(2,1, '뷰티/패션', 'G', 'admin', CURRENT_TIMESTAMP);
INSERT INTO category_sub(category_no, seqno, cate_nm, visible, reg_id, reg_date)
VALUES(2,2, '교육', 'G', 'admin', CURRENT_TIMESTAMP);
INSERT INTO category_sub(category_no, seqno, cate_nm, visible, reg_id, reg_date)
VALUES(2,3, '노하우/스타일', 'G', 'admin', CURRENT_TIMESTAMP);

INSERT INTO category_sub(category_no, seqno, cate_nm, visible, reg_id, reg_date)
VALUES(3,1, '회원관리', 'A', 'admin', CURRENT_TIMESTAMP);
INSERT INTO category_sub(category_no, seqno, cate_nm, visible, reg_id, reg_date)
VALUES(3,2, '리뷰 글 관리', 'A', 'admin', CURRENT_TIMESTAMP);
