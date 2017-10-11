
/* Drop Tables */

DROP TABLE SOCAR.NOTICE_IMG CASCADE CONSTRAINTS;
DROP TABLE SOCAR.NOTICE CASCADE CONSTRAINTS;
DROP TABLE SOCAR.AD CASCADE CONSTRAINTS;
DROP TABLE SOCAR.CANC CASCADE CONSTRAINTS;
DROP TABLE SOCAR.CAR_WASTE CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RESERVE CASCADE CONSTRAINTS;
DROP TABLE SOCAR.CAR_ISSUE CASCADE CONSTRAINTS;
DROP TABLE SOCAR.COU_USECAR CASCADE CONSTRAINTS;
DROP TABLE SOCAR.CAR CASCADE CONSTRAINTS;
DROP TABLE SOCAR.CARD CASCADE CONSTRAINTS;
DROP TABLE SOCAR.CAR_MODEL CASCADE CONSTRAINTS;
DROP TABLE SOCAR.COU_ISSUE CASCADE CONSTRAINTS;
DROP TABLE SOCAR.COU_CREATE CASCADE CONSTRAINTS;
DROP TABLE SOCAR.COUPON CASCADE CONSTRAINTS;
DROP TABLE SOCAR.COU_RESTRICTION CASCADE CONSTRAINTS;
DROP TABLE SOCAR.COU_USE CASCADE CONSTRAINTS;
DROP TABLE SOCAR.DEPT CASCADE CONSTRAINTS;
DROP TABLE SOCAR.INQUIRY CASCADE CONSTRAINTS;
DROP TABLE SOCAR.KEY_C_SEND CASCADE CONSTRAINTS;
DROP TABLE SOCAR.KEY_C_RQ CASCADE CONSTRAINTS;
DROP TABLE SOCAR.MEM CASCADE CONSTRAINTS;
DROP TABLE SOCAR.MEMBERSHIP CASCADE CONSTRAINTS;
DROP TABLE SOCAR.PANALTY_ACT CASCADE CONSTRAINTS;
DROP TABLE SOCAR.PANALTY CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RENT_E CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RENT_EX CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RENT_S CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RQC_DIS CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RQC_LIKE CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RQL_DIS CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RQL_LIKE CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RQ_CAR CASCADE CONSTRAINTS;
DROP TABLE SOCAR.RQ_LOC CASCADE CONSTRAINTS;
DROP TABLE SOCAR.SIMPLE_MEM CASCADE CONSTRAINTS;
DROP TABLE SOCAR.SO_ZONE CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SOCAR.CAR_I_CODE_SEQ;
DROP SEQUENCE SOCAR.CAR_NAME_CODE_SEQ;
DROP SEQUENCE SOCAR.CAR_TYPE_CODE_SEQ;
DROP SEQUENCE SOCAR.COU_CODE_SEQ;
DROP SEQUENCE SOCAR.COU_C_CODE_SEQ;
DROP SEQUENCE SOCAR.COU_I_CODE_SEQ;
DROP SEQUENCE SOCAR.C_U_CODE_SEQ;
DROP SEQUENCE SOCAR.INQUIRY_SEQ;
DROP SEQUENCE SOCAR.MS_CODE_SEQ;
DROP SEQUENCE SOCAR.NOT_IMG_CODE_SEQ;
DROP SEQUENCE SOCAR.NOT_NO_SEQ;
DROP SEQUENCE SOCAR.RES_CODE_SEQ;
DROP SEQUENCE SOCAR.SO_ZONE_SEQ;




/* Create Sequences */

CREATE SEQUENCE SOCAR.CAR_I_CODE_SEQ INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 START WITH 8 NOCACHE;
CREATE SEQUENCE SOCAR.CAR_NAME_CODE_SEQ INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 START WITH 24 NOCACHE;
CREATE SEQUENCE SOCAR.CAR_TYPE_CODE_SEQ INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 START WITH 2 NOCACHE;
CREATE SEQUENCE SOCAR.COU_CODE_SEQ INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 START WITH 8 NOCACHE;
CREATE SEQUENCE SOCAR.COU_C_CODE_SEQ INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 START WITH 130 NOCACHE;
CREATE SEQUENCE SOCAR.COU_I_CODE_SEQ INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 START WITH 77 NOCACHE;
CREATE SEQUENCE SOCAR.C_U_CODE_SEQ INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 START WITH 14 NOCACHE;
CREATE SEQUENCE SOCAR.INQUIRY_SEQ INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 START WITH 14 NOCACHE;
CREATE SEQUENCE SOCAR.MS_CODE_SEQ INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 START WITH 55 NOCACHE;
CREATE SEQUENCE SOCAR.NOT_IMG_CODE_SEQ INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 START WITH 6 NOCACHE;
CREATE SEQUENCE SOCAR.NOT_NO_SEQ INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 START WITH 24 NOCACHE;
CREATE SEQUENCE SOCAR.RES_CODE_SEQ INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 START WITH 79 NOCACHE;
CREATE SEQUENCE SOCAR.SO_ZONE_SEQ INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 START WITH 4 NOCACHE;



/* Create Tables */

CREATE TABLE SOCAR.AD
(
	AD_ID varchar2(15 char) NOT NULL,
	DEPT_NO varchar2(10 char) NOT NULL,
	AD_NAME varchar2(10 char) NOT NULL,
	AD_PWD varchar2(15 char) NOT NULL,
	AD_REGIDATE date DEFAULT SYSDATE  NOT NULL,
	CONSTRAINT SYS_C0011874 PRIMARY KEY (AD_ID)
);


CREATE TABLE SOCAR.CANC
(
	RES_CODE varchar2(15) NOT NULL,
	CANC_DATE date DEFAULT SYSDATE  NOT NULL,
	CONSTRAINT SYS_C0011878 PRIMARY KEY (RES_CODE)
);


CREATE TABLE SOCAR.CAR
(
	CAR_NAME_CODE varchar2(15 char) NOT NULL,
	CAR_TYPE_CODE varchar2(15 char) NOT NULL,
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
	CONSTRAINT SYS_C0011893 PRIMARY KEY (CAR_NAME_CODE)
);


CREATE TABLE SOCAR.CARD
(
	CARD_CODE varchar2(20) NOT NULL,
	SMEM_ID varchar2(40) NOT NULL,
	CARD_EXPDATE date NOT NULL,
	CARD_TYPE varchar2(1) NOT NULL,
	CARD_BIRTH number,
	CARD_PWD varchar2(2),
	CARD_C_NUM varchar2(30 char),
	CARD_DEFAULT varchar2(1 char) NOT NULL,
	CARD_CREATE_DATE date DEFAULT SYSDATE,
	CONSTRAINT SYS_C0011901 PRIMARY KEY (CARD_CODE)
);


CREATE TABLE SOCAR.CAR_ISSUE
(
	CAR_I_CODE varchar2(15 char) NOT NULL,
	CAR_NAME_CODE varchar2(15 char) NOT NULL,
	SOZ_CODE varchar2(15 char) NOT NULL,
	CAR_I_DATE date DEFAULT SYSDATE  NOT NULL,
	CAR_I_NUM varchar2(9 char) NOT NULL,
	CAR_I_SAFE_OPTION varchar2(100 char) NOT NULL,
	CAR_I_ADD_OPTION varchar2(100 char) NOT NULL,
	CAR_NICK varchar2(14 char) NOT NULL,
	CONSTRAINT SYS_C0011910 PRIMARY KEY (CAR_I_CODE)
);


CREATE TABLE SOCAR.CAR_MODEL
(
	CAR_TYPE_CODE varchar2(15 char) NOT NULL,
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
	CONSTRAINT SYS_C0011917 PRIMARY KEY (CAR_TYPE_CODE)
);


CREATE TABLE SOCAR.CAR_WASTE
(
	CAR_I_CODE varchar2(15 char) NOT NULL,
	CAR_W_DATE date NOT NULL,
	CAR_W_REASON nvarchar2(500) NOT NULL,
	CONSTRAINT SYS_C0011921 PRIMARY KEY (CAR_I_CODE)
);


CREATE TABLE SOCAR.COUPON
(
	COU_CODE varchar2(15) NOT NULL,
	COU_NAME varchar2(15) NOT NULL,
	COU_DESC varchar2(50) NOT NULL,
	COU_SALE number NOT NULL,
	COU_MINTIME number NOT NULL,
	COU_MAXTIME number NOT NULL,
	COU_MINAGE number(3,0) NOT NULL,
	COU_MINUSE number(3,0) NOT NULL,
	COU_EXP date NOT NULL,
	MAX_SALE_PER number(3,0) NOT NULL,
	COU_ONLY_NEW varchar2(1) NOT NULL,
	COU_C_START number NOT NULL,
	COU_C_END number NOT NULL,
	CONSTRAINT SYS_C0011933 PRIMARY KEY (COU_CODE)
);


CREATE TABLE SOCAR.COU_CREATE
(
	COU_C_CODE varchar2(15) NOT NULL,
	COU_CODE varchar2(15) NOT NULL,
	CONSTRAINT SYS_C0011940 PRIMARY KEY (COU_C_CODE)
);


CREATE TABLE SOCAR.COU_ISSUE
(
	COU_I_CODE varchar2(15 char) NOT NULL,
	COU_C_CODE varchar2(15) NOT NULL,
	SMEM_ID varchar2(40) NOT NULL,
	COU_I_DATE date DEFAULT SYSDATE   NOT NULL,
	COU_I_E_DATE date DEFAULT SYSDATE   NOT NULL,
	CONSTRAINT SYS_C0011946 PRIMARY KEY (COU_I_CODE)
);


CREATE TABLE SOCAR.COU_RESTRICTION
(
	COU_R_CODE varchar2(15 char) NOT NULL,
	COU_CODE varchar2(15 char) NOT NULL,
	SOZ_CODE varchar2(15 char) NOT NULL,
	CONSTRAINT SYS_C0011950 PRIMARY KEY (COU_R_CODE)
);


CREATE TABLE SOCAR.COU_USE
(
	COU_USE_CODE varchar2(15 char) NOT NULL,
	COU_I_CODE varchar2(20 char) NOT NULL,
	RES_CODE varchar2(15 char) NOT NULL,
	CONSTRAINT SYS_C0011954 PRIMARY KEY (COU_USE_CODE)
);


CREATE TABLE SOCAR.COU_USECAR
(
	USECAR_CODE varchar2(15 char) NOT NULL,
	CAR_NAME_CODE varchar2(15 char) NOT NULL,
	COU_CODE varchar2(15 char) NOT NULL,
	CONSTRAINT SYS_C0011958 PRIMARY KEY (USECAR_CODE)
);


CREATE TABLE SOCAR.DEPT
(
	DEPT_NO varchar2(10 char) NOT NULL,
	DEPT_NAME varchar2(15 char) NOT NULL,
	DEPT_REGIDATE date DEFAULT SYSDATE  NOT NULL,
	DEPT_DESC varchar2(500 char) NOT NULL,
	CONSTRAINT SYS_C0011963 PRIMARY KEY (DEPT_NO)
);


CREATE TABLE SOCAR.INQUIRY
(
	I_NO number NOT NULL,
	SMEM_ID varchar2(40) NOT NULL,
	CATEGORY varchar2(10 char) NOT NULL,
	TITLE varchar2(100 char) NOT NULL,
	CONTENT varchar2(2000 char) NOT NULL,
	IMAGE varchar2(30 char) NOT NULL,
	I_DATE date DEFAULT SYSDATE
,
	CONSTRAINT SYS_C0012880 PRIMARY KEY (I_NO)
);


CREATE TABLE SOCAR.KEY_C_RQ
(
	KEY_C_RQ_CODE varchar2(15 char) NOT NULL,
	SMEM_ID varchar2(40 char) NOT NULL,
	KEY_C_RQ_DATE date DEFAULT SYSDATE  NOT NULL,
	CONSTRAINT SYS_C0011967 PRIMARY KEY (KEY_C_RQ_CODE)
);


CREATE TABLE SOCAR.KEY_C_SEND
(
	KEY_C_SEND_CODE varchar2(15 char) NOT NULL,
	KEY_C_RQ_CODE varchar2(15 char) NOT NULL,
	KEY_C_SEND_DATE date DEFAULT SYSDATE  NOT NULL,
	CONSTRAINT SYS_C0011971 PRIMARY KEY (KEY_C_SEND_CODE)
);


CREATE TABLE SOCAR.MEM
(
	SMEM_ID varchar2(40) NOT NULL,
	MEM_ADDR_NUM varchar2(30),
	MEM_ADDR_FIR varchar2(100 char),
	MEM_ADDR_SEC varchar2(100 char),
	MEM_MAINAREA varchar2(20),
	MEM_C_TYPE varchar2(4),
	MEM_C_NUM varchar2(20),
	MEM_C_EXPDATE date,
	MEM_C_IDATE date,
	MEM_GENDER varchar2(2 char),
	CONSTRAINT SYS_C0011412 PRIMARY KEY (SMEM_ID)
);


CREATE TABLE SOCAR.MEMBERSHIP
(
	MS_CODE varchar2(15) NOT NULL,
	SMEM_ID varchar2(40) NOT NULL,
	MS_CHANGE number NOT NULL,
	MS_DATE date,
	CONSTRAINT SYS_C0011986 PRIMARY KEY (MS_CODE)
);


CREATE TABLE SOCAR.NOTICE
(
	NOT_NO number NOT NULL,
	AD_ID varchar2(15 char) NOT NULL,
	NOT_TITLE varchar2(100 char) NOT NULL,
	NOT_CONTENT varchar2(2000 char) NOT NULL,
	NOT_POSTDATE date DEFAULT SYSDATE  NOT NULL,
	CONSTRAINT SYS_C0011993 PRIMARY KEY (NOT_NO)
);


CREATE TABLE SOCAR.NOTICE_IMG
(
	NOT_IMG_CODE number NOT NULL,
	NOT_NO number NOT NULL,
	NOT_IMG_SRC varchar2(100) NOT NULL,
	CONSTRAINT SYS_C0011427 PRIMARY KEY (NOT_IMG_CODE)
);


CREATE TABLE SOCAR.PANALTY
(
	P_CODE varchar2(15 char) NOT NULL,
	P_NAME varchar2(20 char) NOT NULL,
	P_PRICE number NOT NULL,
	CONSTRAINT SYS_C0011997 PRIMARY KEY (P_CODE)
);


CREATE TABLE SOCAR.PANALTY_ACT
(
	PA_CODE varchar2(15 char) NOT NULL,
	RES_CODE varchar2(15 char) NOT NULL,
	P_CODE varchar2(15 char) NOT NULL,
	CONSTRAINT SYS_C0012001 PRIMARY KEY (PA_CODE)
);


CREATE TABLE SOCAR.RENT_E
(
	RES_CODE varchar2(15 char) NOT NULL,
	RENT_E_DATE date DEFAULT SYSDATE  NOT NULL,
	RENT_E_ARTICLE nvarchar2(100) NOT NULL,
	RENT_E_KM number NOT NULL,
	RENT_E_HIPASS number NOT NULL,
	RENT_E_PANALTY number NOT NULL,
	RENT_E_ECTPRICE number NOT NULL,
	RENT_E_ECTSALE number NOT NULL,
	CONSTRAINT SYS_C0012010 PRIMARY KEY (RES_CODE)
);


CREATE TABLE SOCAR.RENT_EX
(
	-- 렌트 최대 두번
	-- 
	RENT_EX_CODE varchar2(15 char) NOT NULL,
	RES_CODE varchar2(15 char) NOT NULL,
	RENT_EX_START date NOT NULL,
	RENT_EX_END date NOT NULL,
	CONSTRAINT SYS_C0012015 PRIMARY KEY (RENT_EX_CODE)
);


CREATE TABLE SOCAR.RENT_S
(
	RES_CODE varchar2(15 char) NOT NULL,
	RENT_S_DATE date DEFAULT SYSDATE  NOT NULL,
	RENT_S_ARTICLE nvarchar2(100) NOT NULL,
	CONSTRAINT SYS_C0012019 PRIMARY KEY (RES_CODE)
);


CREATE TABLE SOCAR.RESERVE
(
	RES_CODE varchar2(15) NOT NULL,
	SMEM_ID varchar2(40) NOT NULL,
	CAR_I_CODE varchar2(15 char) NOT NULL,
	CARD_CODE varchar2(20) NOT NULL,
	RES_PRICE number NOT NULL,
	RES_DATE_START date NOT NULL,
	RES_DATE_END date NOT NULL,
	RESERVE_TYPE varchar2(1) NOT NULL,
	RES_DATE date DEFAULT SYSDATE   NOT NULL,
	RES_INSTYPE nvarchar2(15) NOT NULL,
	RES_INSCOST number NOT NULL,
	RES_CARDKEY varchar2(1) NOT NULL,
	RES_ARTICLE nvarchar2(100) NOT NULL,
	MS_CODE varchar2(15),
	SALE_PRICE number DEFAULT 0,
	COU_I_CODE varchar2(15 char),
	CONSTRAINT SYS_C0012033 PRIMARY KEY (RES_CODE)
);


CREATE TABLE SOCAR.RQC_DIS
(
	RQC_DIS_CODE varchar2(15 char) NOT NULL,
	RQC_CODE varchar2(10 char) NOT NULL,
	SMEM_ID varchar2(40 char) NOT NULL,
	CONSTRAINT SYS_C0012037 PRIMARY KEY (RQC_DIS_CODE)
);


CREATE TABLE SOCAR.RQC_LIKE
(
	RQC_LIKE_CODE varchar2(15 char) NOT NULL,
	RQC_CODE varchar2(10 char) NOT NULL,
	SMEM_ID varchar2(40 char) NOT NULL,
	CONSTRAINT SYS_C0012041 PRIMARY KEY (RQC_LIKE_CODE)
);


CREATE TABLE SOCAR.RQL_DIS
(
	RQL_DIS_CODE varchar2(15 char) NOT NULL,
	RQL_CODE varchar2(15 char) NOT NULL,
	SMEM_ID varchar2(40 char) NOT NULL,
	CONSTRAINT SYS_C0012045 PRIMARY KEY (RQL_DIS_CODE)
);


CREATE TABLE SOCAR.RQL_LIKE
(
	RQL_LIKE_CODE varchar2(15 char) NOT NULL,
	RQL_CODE varchar2(15 char) NOT NULL,
	SMEM_ID varchar2(40 char) NOT NULL,
	CONSTRAINT SYS_C0012049 PRIMARY KEY (RQL_LIKE_CODE)
);


CREATE TABLE SOCAR.RQ_CAR
(
	RQC_CODE varchar2(10 char) NOT NULL,
	RQC_CONTENT varchar2(1000 char) NOT NULL,
	RQC_LOC varchar2(30 char) NOT NULL,
	SMEM_ID varchar2(40 char) NOT NULL,
	RQC_DATE date DEFAULT SYSDATE,
	CONSTRAINT SYS_C0012106 PRIMARY KEY (RQC_CODE)
);


CREATE TABLE SOCAR.RQ_LOC
(
	RQL_CODE varchar2(15 char) NOT NULL,
	RQL_CONTENT varchar2(1000 char) NOT NULL,
	RQL_LOC varchar2(30 char) NOT NULL,
	SMEM_ID varchar2(40 char) NOT NULL,
	RQL_DATE date DEFAULT SYSDATE,
	CONSTRAINT SYS_C0012111 PRIMARY KEY (RQL_CODE)
);


CREATE TABLE SOCAR.SIMPLE_MEM
(
	SMEM_ID varchar2(40) NOT NULL,
	SMEM_NAME varchar2(20) NOT NULL,
	SMEM_TEL number NOT NULL,
	SMEM_PWD varchar2(15) NOT NULL,
	SMEM_DATE date DEFAULT SYSDATE   NOT NULL,
	SMEM_VERIFY varchar2(1 char) DEFAULT 'N' NOT NULL,
	CONSTRAINT SYS_C0012055 PRIMARY KEY (SMEM_ID)
);


CREATE TABLE SOCAR.SO_ZONE
(
	SOZ_CODE varchar2(15 char) NOT NULL,
	SOZ_NAME varchar2(30 char) NOT NULL,
	SOZ_LOC nvarchar2(30) NOT NULL,
	SOZ_MAXCAR number NOT NULL,
	SOZ_DATE date DEFAULT SYSDATE  NOT NULL,
	SOZ_LATITUDE number NOT NULL,
	SOZ_LONGITUDE number NOT NULL,
	CONSTRAINT SYS_C0012063 PRIMARY KEY (SOZ_CODE)
);



/* Create Foreign Keys */

ALTER TABLE SOCAR.NOTICE
	ADD CONSTRAINT SYS_C0012068 FOREIGN KEY (AD_ID)
	REFERENCES SOCAR.AD (AD_ID)
;


ALTER TABLE SOCAR.CAR_ISSUE
	ADD CONSTRAINT SYS_C0012069 FOREIGN KEY (CAR_NAME_CODE)
	REFERENCES SOCAR.CAR (CAR_NAME_CODE)
;


ALTER TABLE SOCAR.COU_USECAR
	ADD CONSTRAINT SYS_C0012070 FOREIGN KEY (CAR_NAME_CODE)
	REFERENCES SOCAR.CAR (CAR_NAME_CODE)
;


ALTER TABLE SOCAR.RESERVE
	ADD CONSTRAINT SYS_C0012071 FOREIGN KEY (CARD_CODE)
	REFERENCES SOCAR.CARD (CARD_CODE)
;


ALTER TABLE SOCAR.CAR_WASTE
	ADD CONSTRAINT SYS_C0012072 FOREIGN KEY (CAR_I_CODE)
	REFERENCES SOCAR.CAR_ISSUE (CAR_I_CODE)
;


ALTER TABLE SOCAR.RESERVE
	ADD CONSTRAINT SYS_C0012073 FOREIGN KEY (CAR_I_CODE)
	REFERENCES SOCAR.CAR_ISSUE (CAR_I_CODE)
;


ALTER TABLE SOCAR.CAR
	ADD CONSTRAINT SYS_C0012074 FOREIGN KEY (CAR_TYPE_CODE)
	REFERENCES SOCAR.CAR_MODEL (CAR_TYPE_CODE)
;


ALTER TABLE SOCAR.COU_CREATE
	ADD CONSTRAINT SYS_C0012075 FOREIGN KEY (COU_CODE)
	REFERENCES SOCAR.COUPON (COU_CODE)
;


ALTER TABLE SOCAR.COU_ISSUE
	ADD CONSTRAINT SYS_C0012078 FOREIGN KEY (COU_C_CODE)
	REFERENCES SOCAR.COU_CREATE (COU_C_CODE)
;


ALTER TABLE SOCAR.RESERVE
	ADD CONSTRAINT SYS_C0012545 FOREIGN KEY (COU_I_CODE)
	REFERENCES SOCAR.COU_ISSUE (COU_I_CODE)
;


ALTER TABLE SOCAR.AD
	ADD CONSTRAINT SYS_C0012080 FOREIGN KEY (DEPT_NO)
	REFERENCES SOCAR.DEPT (DEPT_NO)
;


ALTER TABLE SOCAR.KEY_C_SEND
	ADD CONSTRAINT SYS_C0012081 FOREIGN KEY (KEY_C_RQ_CODE)
	REFERENCES SOCAR.KEY_C_RQ (KEY_C_RQ_CODE)
;


ALTER TABLE SOCAR.RESERVE
	ADD CONSTRAINT SYS_C0012546 FOREIGN KEY (MS_CODE)
	REFERENCES SOCAR.MEMBERSHIP (MS_CODE)
;


ALTER TABLE SOCAR.NOTICE_IMG
	ADD CONSTRAINT SYS_C0012086 FOREIGN KEY (NOT_NO)
	REFERENCES SOCAR.NOTICE (NOT_NO)
;


ALTER TABLE SOCAR.PANALTY_ACT
	ADD CONSTRAINT SYS_C0012087 FOREIGN KEY (P_CODE)
	REFERENCES SOCAR.PANALTY (P_CODE)
;


ALTER TABLE SOCAR.PANALTY_ACT
	ADD CONSTRAINT SYS_C0012088 FOREIGN KEY (RES_CODE)
	REFERENCES SOCAR.RENT_S (RES_CODE)
;


ALTER TABLE SOCAR.RENT_E
	ADD CONSTRAINT SYS_C0012089 FOREIGN KEY (RES_CODE)
	REFERENCES SOCAR.RENT_S (RES_CODE)
;


ALTER TABLE SOCAR.RENT_EX
	ADD CONSTRAINT SYS_C0012090 FOREIGN KEY (RES_CODE)
	REFERENCES SOCAR.RENT_S (RES_CODE)
;


ALTER TABLE SOCAR.CANC
	ADD FOREIGN KEY (RES_CODE)
	REFERENCES SOCAR.RESERVE (RES_CODE)
;


ALTER TABLE SOCAR.INQUIRY
	ADD CONSTRAINT SYS_C0012881 FOREIGN KEY (SMEM_ID)
	REFERENCES SOCAR.SIMPLE_MEM (SMEM_ID)
;


ALTER TABLE SOCAR.CAR_ISSUE
	ADD CONSTRAINT SYS_C0012100 FOREIGN KEY (SOZ_CODE)
	REFERENCES SOCAR.SO_ZONE (SOZ_CODE)
;


ALTER TABLE SOCAR.COU_RESTRICTION
	ADD CONSTRAINT SYS_C0012101 FOREIGN KEY (SOZ_CODE)
	REFERENCES SOCAR.SO_ZONE (SOZ_CODE)
;



/* Comments */

COMMENT ON COLUMN SOCAR.CAR_MODEL.CAR_INSURANCE_ONE_HOUR IS '손해 면책부담금 최대 30만원 선택 중
1시간 기준';
COMMENT ON COLUMN SOCAR.CAR_MODEL.CAR_INSURANCE_ONE_DAY IS '손해 면책부담금 최대 30만원 선택 중
1일 기준';
COMMENT ON COLUMN SOCAR.CAR_MODEL.CAR_INSURANCE_TWO_HOUR IS '손해 면책부담금 최대 70만원 선택 중
1시간 기준';
COMMENT ON COLUMN SOCAR.CAR_MODEL.CAR_INSURANCE_TWO_DAY IS '손해 면책부담금 최대 70만원 선택 중
1일 기준';
COMMENT ON COLUMN SOCAR.RENT_EX.RENT_EX_CODE IS '렌트 최대 두번
';


