DROP TABLE web_member CASCADE CONSTRAINTS;
DROP TABLE flower_dic CASCADE CONSTRAINTS;
DROP TABLE order_list CASCADE CONSTRAINTS;
DROP TABLE sentence_list CASCADE CONSTRAINTS;
DROP TABLE MBTI CASCADE CONSTRAINTS;
DROP TABLE member_MBTI CASCADE CONSTRAINTS;
DROP TABLE result_flower_1 CASCADE CONSTRAINTS;
DROP TABLE result_flower_2 CASCADE CONSTRAINTS;
DROP TABLE result_flower_3 CASCADE CONSTRAINTS;
DROP TABLE result_flower_4 CASCADE CONSTRAINTS;
DROP TABLE result_flower_5 CASCADE CONSTRAINTS;


CREATE TABLE web_member(
id varchar2(50) not null,
pw varchar2(50) not null,
name VARCHAR2(20) not null,
tel VARCHAR2(30) not null,
CONSTRAINT web_mem_pk PRIMARY KEY(id)
);

CREATE TABLE flower_dic(
flower_id number not null,
flower_name VARCHAR2(50) not null UNIQUE,
flower_mean VARCHAR2(500) not null,
CONSTRAINT dic_id_pk PRIMARY KEY(flower_id)
);

CREATE TABLE order_list(
id varchar2(50) not null,
flower_id number not null,
flower_name VARCHAR2(20) not null,
address VARCHAR2(500) not null,
order_date date,
CONSTRAINT ord_floid_fk FOREIGN KEY(flower_id)
REFERENCES flower_dic(flower_id),
CONSTRAINT ord_flona_fk FOREIGN KEY(flower_name)
REFERENCES flower_dic(flower_name),
CONSTRAINT ord_id_fk FOREIGN KEY(id)
REFERENCES web_member(id));

CREATE TABLE sentence_list(
id varchar2(50) not null,
sentence VARCHAR2(500) not null,
sen_insert_date date,
CONSTRAINT senlis_id_fk FOREIGN KEY(id)
REFERENCES web_member(id));

CREATE TABLE MBTI(
type VARCHAR2(50) not null,
type_desc VARCHAR2(500) not null,
CONSTRAINT MBTI_ty_pk PRIMARY KEY(type));

CREATE TABLE member_MBTI(
id varchar2(50) not null,
mbti_result VARCHAR2(50) not null,
test_date date,
CONSTRAINT MBTI_id_fk FOREIGN KEY(id)
REFERENCES web_member(id),
CONSTRAINT MBTI_result_fk FOREIGN KEY(mbti_result)
REFERENCES MBTI(type));

CREATE TABLE result_flower_1(
id varchar2(50) not null,
flower_id number not null,
CONSTRAINT re1_id_fk FOREIGN KEY(id)
REFERENCES web_member(id),
CONSTRAINT re1_floid_fk FOREIGN KEY(flower_id)
REFERENCES flower_dic(flower_id));

CREATE TABLE result_flower_2(
id varchar2(50) not null,
flower_id number not null,
CONSTRAINT re2_id_fk FOREIGN KEY(id)
REFERENCES web_member(id),
CONSTRAINT re2_floid_fk FOREIGN KEY(flower_id)
REFERENCES flower_dic(flower_id));

CREATE TABLE result_flower_3(
id varchar2(50) not null,
flower_id number not null,
CONSTRAINT re3_id_fk FOREIGN KEY(id)
REFERENCES web_member(id),
CONSTRAINT re3_floid_fk FOREIGN KEY(flower_id)
REFERENCES flower_dic(flower_id));


CREATE TABLE result_flower_4(
id varchar2(50) not null,
flower_id number not null,
CONSTRAINT re4_id_fk FOREIGN KEY(id)
REFERENCES web_member(id),
CONSTRAINT re4_floid_fk FOREIGN KEY(flower_id)
REFERENCES flower_dic(flower_id));


CREATE TABLE result_flower_5(
id varchar2(50) not null,
flower_id number not null,
CONSTRAINT re5_id_fk FOREIGN KEY(id)
REFERENCES web_member(id),
CONSTRAINT re5_floid_fk FOREIGN KEY(flower_id)
REFERENCES flower_dic(flower_id));


select * from web_member;
delete web_member where id = 'dd';
Select * from web_member WHERE id = 'ff' AND pw = 'ff';

select * from sentence_list;

SELECT * FROM MEMBER_MBTI WHERE id = 'ff';

SELECT mbti_result, type_desc, type_worst, type_best, type_img FROM mbti m, member_mbti h, web_member w WHERE m.type = h.mbti_result AND w.id= h.id AND h.id = 'ff';