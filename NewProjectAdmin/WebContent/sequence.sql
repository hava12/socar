



CREATE SEQUENCE COU_CODE_SEQ NOCACHE NOCYCLE;
CREATE SEQUENCE COU_C_CODE_SEQ NOCACHE NOCYCLE;
CREATE SEQUENCE CAR_TYPE_CODE_SEQ NOCACHE NOCYCLE;
CREATE SEQUENCE CAR_NAME_CODE_SEQ NOCACHE NOCYCLE;
CREATE SEQUENCE SO_ZONE_SEQ NOCACHE NOCYCLE;
CREATE SEQUENCE NOT_NO_SEQ NOCACHE NOCYCLE;
CREATE SEQUENCE NOT_IMG_CODE_SEQ NOCACHE NOCYCLE;
CREATE SEQUENCE CAR_I_CODE_SEQ NOCACHE NOCYCLE;
CREATE SEQUENCE RES_CODE_SEQ NOCACHE NOCYCLE;




/* Drop Tables */

DROP TABLE SOCAR.NOTICE_IMG CASCADE CONSTRAINTS;
DROP TABLE SOCAR.NOTICE CASCADE CONSTRAINTS;
DROP TABLE SOCAR.AD CASCADE CONSTRAINTS;
DROP TABLE SOCAR.CANC CASCADE CONSTRAINTS;
DROP TABLE SOCAR.CAR_WASTE CASCADE CONSTRAINTS;
DROP TABLE SOCAR.COU_USE CASCADE CONSTRAINTS;
DROP TABLE SOCAR.PANALTY_ACT CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RENT_E CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RENT_EX CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RENT_S CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RESERVE CASCADE CONSTRAINTS;
DROP TABLE SOCAR.CAR_ISSUE CASCADE CONSTRAINTS;
DROP TABLE SOCAR.COU_USECAR CASCADE CONSTRAINTS;
DROP TABLE SOCAR.CAR CASCADE CONSTRAINTS;
DROP TABLE SOCAR.CARD CASCADE CONSTRAINTS;
DROP TABLE SOCAR.CAR_MODEL CASCADE CONSTRAINTS;
DROP TABLE SOCAR.COU_ISSUE CASCADE CONSTRAINTS;
DROP TABLE SOCAR.COU_CREATE CASCADE CONSTRAINTS;
DROP TABLE SOCAR.COU_RESTRICTION CASCADE CONSTRAINTS;
DROP TABLE SOCAR.COUPON CASCADE CONSTRAINTS;
DROP TABLE SOCAR.DEPT CASCADE CONSTRAINTS;
DROP TABLE SOCAR.KEY_C_SEND CASCADE CONSTRAINTS;
DROP TABLE SOCAR.KEY_C_RQ CASCADE CONSTRAINTS;
DROP TABLE SOCAR.MEMBERSHIP CASCADE CONSTRAINTS;
DROP TABLE SOCAR.MEM CASCADE CONSTRAINTS;
DROP TABLE SOCAR.PANALTY CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RQC_DIS CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RQC_LIKE CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RQL_DIS CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RQL_LIKE CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RQ_CAR CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RQ_LOC CASCADE CONSTRAINTS;
DROP TABLE SOCAR.SIMPLE_MEM CASCADE CONSTRAINTS;
DROP TABLE SOCAR.SO_ZONE CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SOCAR.COU_CODE_SEQ;
DROP SEQUENCE SOCAR.COU_C_CODE_SEQ;
DROP SEQUENCE SOCAR.MS_CODE_SEQ;
DROP SEQUENCE SOCAR.NOT_IMG_CODE_SEQ;
DROP SEQUENCE SOCAR.NOT_NO_SEQ;




/* Create Sequences */

CREATE SEQUENCE SOCAR.COU_CODE_SEQ INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 START WITH 20 NOCACHE;
CREATE SEQUENCE SOCAR.COU_C_CODE_SEQ INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 START WITH 100291 NOCACHE;
CREATE SEQUENCE SOCAR.MS_CODE_SEQ INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 START WITH 16 NOCACHE;
CREATE SEQUENCE SOCAR.NOT_IMG_CODE_SEQ INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 START WITH 12 NOCACHE;
CREATE SEQUENCE SOCAR.NOT_NO_SEQ INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 START WITH 35 NOCACHE;



/* Create Tables */

CREATE TABLE SOCAR.AD
(
	AD_ID varchar2(15 char) NOT NULL,
	DEPT_NO varchar2(15) NOT NULL,
	AD_NAME varchar2(10 char) NOT NULL,
	AD_PWD varchar2(15 char) NOT NULL,
	AD_REGIDATE date DEFAULT SYSDATE  NOT NULL,
	CONSTRAINT SYS_C0011307 PRIMARY KEY (AD_ID)
);


CREATE TABLE SOCAR.CANC
(
	RES_CODE varchar2(15) NOT NULL,
	CANC_DATE date DEFAULT SYSDATE  NOT NULL,
	CANC_PRICE number NOT NULL,
	CONSTRAINT SYS_C0011311 PRIMARY KEY (RES_CODE)
);


CREATE TABLE SOCAR.CAR
(
	CAR_NAME_CODE varchar2(15) NOT NULL,
	CAR_TYPE_CODE varchar2(15) NOT NULL,
	CAR_NAME varchar2(15 char) NOT NULL,
	CAR_IMG varchar2(150 char) NOT NULL,
	CAR_DESC nvarchar2(500) NOT NULL,
	CAR_LAND_PRICE number NOT NULL,
	CAR_JEJU_PRICE number NOT NULL,
	CAR_PRICE_SO_WD number NOT NULL,
	CAR_PRICE_SO_WE number NOT NULL,
	CAR_DRIVE_PRICE number NOT NULL,
	CAR_COM varchar2(50 char) NOT NULL,
	CAR_FUEL varchar2(10 char) NOT NULL,
	CAR_TRANS varchar2(15 char) NOT NULL,
	CAR_MAX_PER number(2,0) NOT NULL,
	CONSTRAINT SYS_C0011326 PRIMARY KEY (CAR_NAME_CODE)
);


CREATE TABLE SOCAR.CARD
(
	CARD_CODE varchar2(15) NOT NULL,
	SMEM_ID varchar2(40 char) NOT NULL,
	CARD_EXPDATE date NOT NULL,
	-- 법인은 'B'
	-- 개인은 'P'
	CARD_TYPE varchar2(1 char) NOT NULL,
	CARD_BIRTH date NOT NULL,
	CARD_PWD number NOT NULL,
	CARD_CREATEDATE date DEFAULT SYSDATE  NOT NULL,
	CONSTRAINT SYS_C0011334 PRIMARY KEY (CARD_CODE)
);


CREATE TABLE SOCAR.CAR_ISSUE
(
	CAR_I_CODE varchar2(15) NOT NULL,
	CAR_NAME_CODE varchar2(15) NOT NULL,
	SOZ_CODE varchar2(15) NOT NULL,
	CAR_I_DATE date DEFAULT SYSDATE  NOT NULL,
	CAR_I_NUM varchar2(9 char) NOT NULL,
	CAR_I_SAFE_OPTION varchar2(100 char) NOT NULL,
	CAR_I_ADD_OPTION varchar2(100 char) NOT NULL,
	CAR_NICK varchar2(14 char) NOT NULL,
	CONSTRAINT SYS_C0011343 PRIMARY KEY (CAR_I_CODE)
);


CREATE TABLE SOCAR.CAR_MODEL
(
	CAR_TYPE_CODE varchar2(15) NOT NULL,
	CAR_TYPE varchar2(15 char) NOT NULL,
	-- 손해 면책부담금 최대 30만원 선택 중 
	-- 1시간 기준
	CAR_INSURANCE_ONE_HOUR number NOT NULL,
	-- 손해 면책부담금 최대 30만원 선택 중 
	-- 1일 기준
	CAR_INSURANCE_ONE_DAY number NOT NULL,
	-- 손해 면책부담금 최대 70만원 선택 중 
	-- 1시간 기준
	CAR_INSURANCE_TWO_HOUR number NOT NULL,
	-- 손해 면책부담금 최대 70만원 선택 중 
	-- 1일 기준
	CAR_INSURANCE_TWO_DAY number NOT NULL,
	CONSTRAINT SYS_C0011350 PRIMARY KEY (CAR_TYPE_CODE)
);


CREATE TABLE SOCAR.CAR_WASTE
(
	CAR_I_CODE varchar2(15) NOT NULL,
	CAR_W_DATE date NOT NULL,
	CAR_W_REASON nvarchar2(500) NOT NULL,
	CONSTRAINT SYS_C0011354 PRIMARY KEY (CAR_I_CODE)
);


CREATE TABLE SOCAR.COUPON
(
	COU_CODE varchar2(15) NOT NULL,
	COU_NAME varchar2(15 char) NOT NULL,
	COU_DESC varchar2(50 char) NOT NULL,
	COU_SALE number NOT NULL,
	COU_MINTIME number NOT NULL,
	COU_MAXTIME number NOT NULL,
	COU_MINAGE number(3,0) NOT NULL,
	COU_MINUSE number(3,0) NOT NULL,
	COU_EXP date NOT NULL,
	MAX_SALE_PER number(3,0) NOT NULL,
	-- 'O' , 'X'로 구분
	-- 
	COU_ONLY_NEW varchar2(1 char) NOT NULL,
	CONSTRAINT SYS_C0011366 PRIMARY KEY (COU_CODE)
);


CREATE TABLE SOCAR.COU_CREATE
(
	COU_C_CODE varchar2(15) NOT NULL,
	COU_CODE varchar2(15) NOT NULL,
	COU_C_DATE date DEFAULT SYSDATE  NOT NULL,
	COU_C_EXPDATE date NOT NULL,
	COU_C_T_START number(4,0) NOT NULL,
	COU_C_T_END number(4,0) NOT NULL,
	CONSTRAINT SYS_C0011373 PRIMARY KEY (COU_C_CODE)
);


CREATE TABLE SOCAR.COU_ISSUE
(
	COU_C_CODE varchar2(15) NOT NULL,
	SMEM_ID varchar2(40 char) NOT NULL,
	COU_I_DATE date DEFAULT SYSDATE  NOT NULL,
	COU_I_E_DATE date DEFAULT SYSDATE  NOT NULL,
	CONSTRAINT SYS_C0011378 PRIMARY KEY (COU_C_CODE)
);


CREATE TABLE SOCAR.COU_RESTRICTION
(
	COU_R_CODE varchar2(15) NOT NULL,
	COU_CODE varchar2(15) NOT NULL,
	SOZ_CODE varchar2(15) NOT NULL,
	CONSTRAINT SYS_C0011382 PRIMARY KEY (COU_R_CODE)
);


CREATE TABLE SOCAR.COU_USE
(
	COU_C_CODE varchar2(15) NOT NULL,
	RES_CODE varchar2(15) NOT NULL,
	CONSTRAINT SYS_C0011385 PRIMARY KEY (COU_C_CODE)
);


CREATE TABLE SOCAR.COU_USECAR
(
	USECAR_CODE varchar2(15) NOT NULL,
	CAR_NAME_CODE varchar2(15) NOT NULL,
	COU_CODE varchar2(15) NOT NULL,
	CONSTRAINT SYS_C0011389 PRIMARY KEY (USECAR_CODE)
);


CREATE TABLE SOCAR.DEPT
(
	DEPT_NO varchar2(15) NOT NULL,
	DEPT_NAME varchar2(15 char) NOT NULL,
	DEPT_REGIDATE date DEFAULT SYSDATE  NOT NULL,
	CONSTRAINT SYS_C0011393 PRIMARY KEY (DEPT_NO)
);


CREATE TABLE SOCAR.KEY_C_RQ
(
	KEY_C_RQ_CODE varchar2(15 char) NOT NULL,
	SMEM_ID varchar2(40 char) NOT NULL,
	KEY_C_RQ_DATE date DEFAULT SYSDATE  NOT NULL,
	CONSTRAINT SYS_C0011397 PRIMARY KEY (KEY_C_RQ_CODE)
);


CREATE TABLE SOCAR.KEY_C_SEND
(
	KEY_C_SEND_CODE varchar2(15 char) NOT NULL,
	KEY_C_RQ_CODE varchar2(15 char) NOT NULL,
	KEY_C_SEND_DATE date DEFAULT SYSDATE  NOT NULL,
	CONSTRAINT SYS_C0011401 PRIMARY KEY (KEY_C_SEND_CODE)
);


CREATE TABLE SOCAR.MEM
(
	SMEM_ID varchar2(40 char) NOT NULL,
	MEM_ADDR varchar2(30 char) NOT NULL,
	MEM_MAINAREA varchar2(20 char) NOT NULL,
	MEM_BIRTH number NOT NULL,
	-- 남자는 'M'
	-- 여자는 'F'
	MEM_GENDER char(1 char) NOT NULL,
	MEM_DATE date DEFAULT SYSDATE  NOT NULL,
	-- 1N 는 1종 보통
	-- 2N 은 2종 보통
	-- 1B 는 1종 대형
	-- 
	MEM_C_TYPE varchar2(4 char) NOT NULL,
	-- 
	-- 
	MEM_C_NUM varchar2(20 char) NOT NULL,
	MEM_C_EXPDATE date NOT NULL,
	-- 
	-- 
	MEM_C_IDATE date NOT NULL,
	CONSTRAINT SYS_C0011412 PRIMARY KEY (SMEM_ID)
);


CREATE TABLE SOCAR.MEMBERSHIP
(
	MS_CODE varchar2(15) NOT NULL,
	SMEM_ID varchar2(40 char) NOT NULL,
	MS_CHANGE number NOT NULL,
	MS_DATE date DEFAULT SYSDATE  NOT NULL,
	CONSTRAINT SYS_C0011417 PRIMARY KEY (MS_CODE)
);


CREATE TABLE SOCAR.NOTICE
(
	NOT_NO varchar2(15 char) NOT NULL,
	AD_ID varchar2(15 char) NOT NULL,
	NOT_TITLE varchar2(100 char) NOT NULL,
	NOT_CONTENT varchar2(2000 char) NOT NULL,
	NOT_POSTDATE date DEFAULT SYSDATE  NOT NULL,
	CONSTRAINT SYS_C0011423 PRIMARY KEY (NOT_NO)
);


CREATE TABLE SOCAR.NOTICE_IMG
(
	NOT_IMG_CODE number NOT NULL,
	NOT_NO varchar2(15 char) NOT NULL,
	NOT_IMG_SRC varchar2(100 char) NOT NULL,
	CONSTRAINT SYS_C0011427 PRIMARY KEY (NOT_IMG_CODE)
);


CREATE TABLE SOCAR.PANALTY
(
	P_CODE varchar2(15) NOT NULL,
	P_NAME varchar2(20 char) NOT NULL,
	P_PRICE number NOT NULL,
	CONSTRAINT SYS_C0011431 PRIMARY KEY (P_CODE)
);


CREATE TABLE SOCAR.PANALTY_ACT
(
	PA_CODE varchar2(15) NOT NULL,
	RES_CODE varchar2(15) NOT NULL,
	P_CODE varchar2(15) NOT NULL,
	CONSTRAINT SYS_C0011435 PRIMARY KEY (PA_CODE)
);


CREATE TABLE SOCAR.RENT_E
(
	RES_CODE varchar2(15) NOT NULL,
	RENT_E_DATE date DEFAULT SYSDATE  NOT NULL,
	RENT_E_ARTICLE nvarchar2(100) NOT NULL,
	RENT_E_KM number NOT NULL,
	RENT_E_HIPASS number NOT NULL,
	RENT_E_PANALTY number NOT NULL,
	RENT_E_ECTPRICE number NOT NULL,
	RENT_E_ECTSALE number NOT NULL,
	CONSTRAINT SYS_C0011444 PRIMARY KEY (RES_CODE)
);


CREATE TABLE SOCAR.RENT_EX
(
	-- 렌트 최대 두번
	-- 
	RENT_EX_CODE varchar2(15) NOT NULL,
	RES_CODE varchar2(15) NOT NULL,
	RENT_EX_START date NOT NULL,
	RENT_EX_END date NOT NULL,
	CONSTRAINT SYS_C0011449 PRIMARY KEY (RENT_EX_CODE)
);


CREATE TABLE SOCAR.RENT_S
(
	RES_CODE varchar2(15) NOT NULL,
	RENT_S_DATE date DEFAULT SYSDATE  NOT NULL,
	RENT_S_ARTICLE nvarchar2(100) NOT NULL,
	CONSTRAINT SYS_C0011453 PRIMARY KEY (RES_CODE)
);


CREATE TABLE SOCAR.RESERVE
(
	RES_CODE varchar2(15) NOT NULL,
	SMEM_ID varchar2(40 char) NOT NULL,
	CAR_I_CODE varchar2(15) NOT NULL,
	CARD_CODE varchar2(15) NOT NULL,
	RES_PRICE number NOT NULL,
	RES_DATE_START date NOT NULL,
	RES_DATE_END date NOT NULL,
	-- 'C' 는 왕복
	-- 'O' 은 편도
	-- 
	RESERVE_TYPE varchar2(1 char) NOT NULL,
	RES_DATE date DEFAULT SYSDATE  NOT NULL,
	RES_INSTYPE nvarchar2(15) NOT NULL,
	-- 쿠폰은 C 멤버십은 M 미적용은 N
	-- 포인트할인일 경우 최대 10000  , 대여요금의 20%까지 가능
	-- 
	-- 
	RES_SALE_TYPE varchar2(1 char) NOT NULL,
	-- 'N' 은 선택 안함 ,
	--  'T' 는 T머니  ,
	-- 'M' 은 회원카드
	-- 
	RES_CARDKEY varchar2(1 char) NOT NULL,
	PAY_ARTICLE nvarchar2(100) NOT NULL,
	CONSTRAINT SYS_C0011467 PRIMARY KEY (RES_CODE)
);


CREATE TABLE SOCAR.RQC_DIS
(
	RQC_DIS_CODE varchar2(15) NOT NULL,
	RQC_CODE varchar2(15) NOT NULL,
	SMEM_ID varchar2(40 char) NOT NULL,
	CONSTRAINT SYS_C0011471 PRIMARY KEY (RQC_DIS_CODE)
);


CREATE TABLE SOCAR.RQC_LIKE
(
	RQC_LIKE_CODE varchar2(15) NOT NULL,
	RQC_CODE varchar2(15) NOT NULL,
	SMEM_ID varchar2(40 char) NOT NULL,
	CONSTRAINT SYS_C0011475 PRIMARY KEY (RQC_LIKE_CODE)
);


CREATE TABLE SOCAR.RQL_DIS
(
	RQL_DIS_CODE varchar2(15) NOT NULL,
	RQL_CODE varchar2(15) NOT NULL,
	SMEM_ID varchar2(40 char) NOT NULL,
	CONSTRAINT SYS_C0011479 PRIMARY KEY (RQL_DIS_CODE)
);


CREATE TABLE SOCAR.RQL_LIKE
(
	RQL_LIKE_CODE varchar2(15) NOT NULL,
	RQL_CODE varchar2(15) NOT NULL,
	SMEM_ID varchar2(40 char) NOT NULL UNIQUE,
	CONSTRAINT SYS_C0011483 PRIMARY KEY (RQL_LIKE_CODE)
);


CREATE TABLE SOCAR.RQ_CAR
(
	RQC_CODE varchar2(15) NOT NULL,
	RQC_CONTENT varchar2(1000 char) NOT NULL,
	RQC_LOC varchar2(30 char) NOT NULL,
	SMEM_ID varchar2(40 char) NOT NULL,
	CONSTRAINT SYS_C0011489 PRIMARY KEY (RQC_CODE)
);


CREATE TABLE SOCAR.RQ_LOC
(
	RQL_CODE varchar2(15) NOT NULL,
	RQL_CONTENT varchar2(1000 char) NOT NULL,
	RQL_LOC varchar2(30 char) NOT NULL,
	SMEM_ID varchar2(40 char) NOT NULL,
	CONSTRAINT SYS_C0011494 PRIMARY KEY (RQL_CODE)
);


CREATE TABLE SOCAR.SIMPLE_MEM
(
	SMEM_ID varchar2(40 char) NOT NULL,
	SMEM_NAME varchar2(20 char) NOT NULL,
	SMEM_TEL number NOT NULL,
	SMEM_PWD varchar2(15 char) NOT NULL,
	SMEM_DATE date DEFAULT SYSDATE  NOT NULL,
	CONSTRAINT SYS_C0011500 PRIMARY KEY (SMEM_ID)
);


CREATE TABLE SOCAR.SO_ZONE
(
	SOZ_CODE varchar2(15) NOT NULL,
	SOZ_NAME varchar2(30 char) NOT NULL,
	SOZ_LOC nvarchar2(30) NOT NULL,
	SOZ_MAXCAR number NOT NULL,
	SOZ_DATE date DEFAULT SYSDATE  NOT NULL,
	SOZ_LATITUDE number NOT NULL,
	SOZ_LONGITUDE number NOT NULL,
	CONSTRAINT SYS_C0011508 PRIMARY KEY (SOZ_CODE)
);



/* Create Foreign Keys */

ALTER TABLE SOCAR.NOTICE
	ADD CONSTRAINT SYS_C0011509 FOREIGN KEY (AD_ID)
	REFERENCES SOCAR.AD (AD_ID)
;


ALTER TABLE SOCAR.CAR_ISSUE
	ADD CONSTRAINT SYS_C0011510 FOREIGN KEY (CAR_NAME_CODE)
	REFERENCES SOCAR.CAR (CAR_NAME_CODE)
;


ALTER TABLE SOCAR.COU_USECAR
	ADD CONSTRAINT SYS_C0011511 FOREIGN KEY (CAR_NAME_CODE)
	REFERENCES SOCAR.CAR (CAR_NAME_CODE)
;


ALTER TABLE SOCAR.RESERVE
	ADD CONSTRAINT SYS_C0011512 FOREIGN KEY (CARD_CODE)
	REFERENCES SOCAR.CARD (CARD_CODE)
;


ALTER TABLE SOCAR.CAR_WASTE
	ADD CONSTRAINT SYS_C0011513 FOREIGN KEY (CAR_I_CODE)
	REFERENCES SOCAR.CAR_ISSUE (CAR_I_CODE)
;


ALTER TABLE SOCAR.RESERVE
	ADD CONSTRAINT SYS_C0011514 FOREIGN KEY (CAR_I_CODE)
	REFERENCES SOCAR.CAR_ISSUE (CAR_I_CODE)
;


ALTER TABLE SOCAR.CAR
	ADD CONSTRAINT SYS_C0011515 FOREIGN KEY (CAR_TYPE_CODE)
	REFERENCES SOCAR.CAR_MODEL (CAR_TYPE_CODE)
;


ALTER TABLE SOCAR.COU_CREATE
	ADD CONSTRAINT SYS_C0011516 FOREIGN KEY (COU_CODE)
	REFERENCES SOCAR.COUPON (COU_CODE)
;


ALTER TABLE SOCAR.COU_RESTRICTION
	ADD CONSTRAINT SYS_C0011517 FOREIGN KEY (COU_CODE)
	REFERENCES SOCAR.COUPON (COU_CODE)
;


ALTER TABLE SOCAR.COU_USECAR
	ADD CONSTRAINT SYS_C0011518 FOREIGN KEY (COU_CODE)
	REFERENCES SOCAR.COUPON (COU_CODE)
;


ALTER TABLE SOCAR.COU_ISSUE
	ADD CONSTRAINT SYS_C0011519 FOREIGN KEY (COU_C_CODE)
	REFERENCES SOCAR.COU_CREATE (COU_C_CODE)
;


ALTER TABLE SOCAR.COU_USE
	ADD CONSTRAINT SYS_C0011520 FOREIGN KEY (COU_C_CODE)
	REFERENCES SOCAR.COU_ISSUE (COU_C_CODE)
;


ALTER TABLE SOCAR.AD
	ADD CONSTRAINT SYS_C0011521 FOREIGN KEY (DEPT_NO)
	REFERENCES SOCAR.DEPT (DEPT_NO)
;


ALTER TABLE SOCAR.KEY_C_SEND
	ADD CONSTRAINT SYS_C0011522 FOREIGN KEY (KEY_C_RQ_CODE)
	REFERENCES SOCAR.KEY_C_RQ (KEY_C_RQ_CODE)
;


ALTER TABLE SOCAR.CARD
	ADD CONSTRAINT SYS_C0011523 FOREIGN KEY (SMEM_ID)
	REFERENCES SOCAR.MEM (SMEM_ID)
;


ALTER TABLE SOCAR.KEY_C_RQ
	ADD CONSTRAINT SYS_C0011524 FOREIGN KEY (SMEM_ID)
	REFERENCES SOCAR.MEM (SMEM_ID)
;


ALTER TABLE SOCAR.MEMBERSHIP
	ADD CONSTRAINT SYS_C0011525 FOREIGN KEY (SMEM_ID)
	REFERENCES SOCAR.MEM (SMEM_ID)
;


ALTER TABLE SOCAR.RESERVE
	ADD CONSTRAINT SYS_C0011526 FOREIGN KEY (SMEM_ID)
	REFERENCES SOCAR.MEM (SMEM_ID)
;


ALTER TABLE SOCAR.NOTICE_IMG
	ADD CONSTRAINT SYS_C0011527 FOREIGN KEY (NOT_NO)
	REFERENCES SOCAR.NOTICE (NOT_NO)
;


ALTER TABLE SOCAR.PANALTY_ACT
	ADD CONSTRAINT SYS_C0011528 FOREIGN KEY (P_CODE)
	REFERENCES SOCAR.PANALTY (P_CODE)
;


ALTER TABLE SOCAR.PANALTY_ACT
	ADD CONSTRAINT SYS_C0011529 FOREIGN KEY (RES_CODE)
	REFERENCES SOCAR.RENT_S (RES_CODE)
;


ALTER TABLE SOCAR.RENT_E
	ADD CONSTRAINT SYS_C0011530 FOREIGN KEY (RES_CODE)
	REFERENCES SOCAR.RENT_S (RES_CODE)
;


ALTER TABLE SOCAR.RENT_EX
	ADD CONSTRAINT SYS_C0011531 FOREIGN KEY (RES_CODE)
	REFERENCES SOCAR.RENT_S (RES_CODE)
;


ALTER TABLE SOCAR.CANC
	ADD CONSTRAINT SYS_C0011532 FOREIGN KEY (RES_CODE)
	REFERENCES SOCAR.RESERVE (RES_CODE)
;


ALTER TABLE SOCAR.COU_USE
	ADD CONSTRAINT SYS_C0011533 FOREIGN KEY (RES_CODE)
	REFERENCES SOCAR.RESERVE (RES_CODE)
;


ALTER TABLE SOCAR.RENT_S
	ADD CONSTRAINT SYS_C0011534 FOREIGN KEY (RES_CODE)
	REFERENCES SOCAR.RESERVE (RES_CODE)
;


ALTER TABLE SOCAR.RQC_DIS
	ADD CONSTRAINT SYS_C0011535 FOREIGN KEY (RQC_CODE)
	REFERENCES SOCAR.RQ_CAR (RQC_CODE)
;


ALTER TABLE SOCAR.RQC_LIKE
	ADD CONSTRAINT SYS_C0011536 FOREIGN KEY (RQC_CODE)
	REFERENCES SOCAR.RQ_CAR (RQC_CODE)
;


ALTER TABLE SOCAR.RQL_DIS
	ADD CONSTRAINT SYS_C0011537 FOREIGN KEY (RQL_CODE)
	REFERENCES SOCAR.RQ_LOC (RQL_CODE)
;


ALTER TABLE SOCAR.RQL_LIKE
	ADD CONSTRAINT SYS_C0011538 FOREIGN KEY (RQL_CODE)
	REFERENCES SOCAR.RQ_LOC (RQL_CODE)
;


ALTER TABLE SOCAR.COU_ISSUE
	ADD CONSTRAINT SYS_C0011539 FOREIGN KEY (SMEM_ID)
	REFERENCES SOCAR.SIMPLE_MEM (SMEM_ID)
;


ALTER TABLE SOCAR.MEM
	ADD CONSTRAINT SYS_C0011540 FOREIGN KEY (SMEM_ID)
	REFERENCES SOCAR.SIMPLE_MEM (SMEM_ID)
;


ALTER TABLE SOCAR.RQC_DIS
	ADD CONSTRAINT SYS_C0011541 FOREIGN KEY (SMEM_ID)
	REFERENCES SOCAR.SIMPLE_MEM (SMEM_ID)
;


ALTER TABLE SOCAR.RQC_LIKE
	ADD CONSTRAINT SYS_C0011542 FOREIGN KEY (SMEM_ID)
	REFERENCES SOCAR.SIMPLE_MEM (SMEM_ID)
;


ALTER TABLE SOCAR.RQL_DIS
	ADD CONSTRAINT SYS_C0011543 FOREIGN KEY (SMEM_ID)
	REFERENCES SOCAR.SIMPLE_MEM (SMEM_ID)
;


ALTER TABLE SOCAR.RQL_LIKE
	ADD CONSTRAINT SYS_C0011544 FOREIGN KEY (SMEM_ID)
	REFERENCES SOCAR.SIMPLE_MEM (SMEM_ID)
;


ALTER TABLE SOCAR.RQ_CAR
	ADD CONSTRAINT SYS_C0011545 FOREIGN KEY (SMEM_ID)
	REFERENCES SOCAR.SIMPLE_MEM (SMEM_ID)
;


ALTER TABLE SOCAR.RQ_LOC
	ADD CONSTRAINT SYS_C0011546 FOREIGN KEY (SMEM_ID)
	REFERENCES SOCAR.SIMPLE_MEM (SMEM_ID)
;


ALTER TABLE SOCAR.CAR_ISSUE
	ADD CONSTRAINT SYS_C0011547 FOREIGN KEY (SOZ_CODE)
	REFERENCES SOCAR.SO_ZONE (SOZ_CODE)
;


ALTER TABLE SOCAR.COU_RESTRICTION
	ADD CONSTRAINT SYS_C0011548 FOREIGN KEY (SOZ_CODE)
	REFERENCES SOCAR.SO_ZONE (SOZ_CODE)
;



/* Comments */

COMMENT ON COLUMN SOCAR.CARD.CARD_TYPE IS '법인은 ''B''
개인은 ''P''';
COMMENT ON COLUMN SOCAR.CAR_MODEL.CAR_INSURANCE_ONE_HOUR IS '손해 면책부담금 최대 30만원 선택 중 
1시간 기준';
COMMENT ON COLUMN SOCAR.CAR_MODEL.CAR_INSURANCE_ONE_DAY IS '손해 면책부담금 최대 30만원 선택 중 
1일 기준';
COMMENT ON COLUMN SOCAR.CAR_MODEL.CAR_INSURANCE_TWO_HOUR IS '손해 면책부담금 최대 70만원 선택 중 
1시간 기준';
COMMENT ON COLUMN SOCAR.CAR_MODEL.CAR_INSURANCE_TWO_DAY IS '손해 면책부담금 최대 70만원 선택 중 
1일 기준';
COMMENT ON COLUMN SOCAR.COUPON.COU_ONLY_NEW IS '''O'' , ''X''로 구분
';
COMMENT ON COLUMN SOCAR.MEM.MEM_GENDER IS '남자는 ''M''
여자는 ''F''';
COMMENT ON COLUMN SOCAR.MEM.MEM_C_TYPE IS '1N 는 1종 보통
2N 은 2종 보통
1B 는 1종 대형
';
COMMENT ON COLUMN SOCAR.MEM.MEM_C_NUM IS '
';
COMMENT ON COLUMN SOCAR.MEM.MEM_C_IDATE IS '
';
COMMENT ON COLUMN SOCAR.RENT_EX.RENT_EX_CODE IS '렌트 최대 두번
';
COMMENT ON COLUMN SOCAR.RESERVE.RESERVE_TYPE IS '''C'' 는 왕복
''O'' 은 편도
';
COMMENT ON COLUMN SOCAR.RESERVE.RES_SALE_TYPE IS '쿠폰은 C 멤버십은 M 미적용은 N
포인트할인일 경우 최대 10000  , 대여요금의 20%까지 가능

';
COMMENT ON COLUMN SOCAR.RESERVE.RES_CARDKEY IS '''N'' 은 선택 안함 ,
 ''T'' 는 T머니  ,
''M'' 은 회원카드
';



