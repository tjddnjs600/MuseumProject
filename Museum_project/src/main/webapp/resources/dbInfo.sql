관리자 테이블

CREATE TABLE tbl_admin(
adid varchar2(10) NOT NULL,
adpwd varchar2(200) NOT NULL,
adnick varchar2(20) NOT null
);

--------------------------------
공지사항 테이블

CREATE TABLE tbl_notice(
nno NUMBER,
ntitle varchar2(1000) NOT NULL,
nwriter varchar2(100) NOT NULL,
n_regdate DATE DEFAULT sysdate,
checkCount number DEFAULT 0,
ncontent varchar2(2000),
imgfile varchar2(1000)
);

ALTER TABLE tbl_notice ADD (
CONSTRAINT notice_pk
PRIMARY KEY (nno)
);

CREATE SEQUENCE seq_notice_nno
START WITH 1
MINVALUE 0
nocycle
nocache;

--------------------------------
이벤트 테이블

CREATE TABLE tbl_event(
etitle varchar2(100) NOT null,
estart varchar2(100) NOT NULL,
eend varchar2(100),
);


--------------------------------
예약 테이블

CREATE TABLE tbl_booking(
bno NUMBER,
btitle varchar2(100) NOT NULL,
bdate varchar2(200) NOT NULL,
btime varchar2(100) NOT NULL,
bname varchar2(100) NOT NULL,
bphone varchar2(100) NOT NULL,
bnumber NUMBER DEFAULT 1
);


ALTER TABLE tbl_booking ADD (
CONSTRAINT booking_pk
PRIMARY KEY (bno)
);

CREATE SEQUENCE seq_booking_bno
START WITH 1
MINVALUE 0
nocycle
nocache;


