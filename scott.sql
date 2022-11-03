CREATE TABLE MYUSER (
    USERNO NUMBER(10,0),--오라클외에 DB의경우 INT(11)혹은 다른방식을 사용.
    USERID VARCHAR2(20),--크기가 들어가는 데이터만큼 자동조절되는 VARCHAR2,반면 VARCHAR인 경우 20전부다 사용.
    USERPW VARCHAR(30),
    NICKNAME VARCHAR(30),
    EMAIL VARCHAR(50),
	PRIMARY KEY (USERNO)--PK 고유키,각각 다른 값을 가진다. 테이블의 대표,기준이되는 데이터이다.
); 

CREATE SEQUENCE SEQ_USER
START WITH 1 INCREMENT BY 1; -- 시퀀스로 USERNO 자동 1씩 증가(오라클 문법)

INSERT INTO MYUSER(    -- DATA ADD
    USERNO,
    USERID,
    USERPW,
    NICKNAME,
    EMAIL
)
VALUES( -- 각 col에 맞는 data 입력
SEQ_USER.nextval,
'id_chabo',
'hihichabo',
'차보님짱짱짱',
'chabbo@ddd.com'
);

INSERT INTO MYUSER(    -- DATA ADD (이거 안적고 하려면 각 열에 맞춰 벨류 다 넣어야함)
    USERNO,
    USERID,
    USERPW,
    NICKNAME,
    EMAIL
)
VALUES( -- 각 col에 맞는 data 입력
SEQ_USER.nextval,
'veryvery',
'hihichabooo',
'차보님짱짱짱짱짱짱',
'chabbo@ddd.com'
);

INSERT INTO MYUSER(    -- DATA ADD (이거 안적고 하려면 각 열에 맞춰 벨류 다 넣어야함)
    USERNO,
    USERID,
    USERPW,
    NICKNAME

)
VALUES( -- 각 col에 맞는 data 입력
SEQ_USER.nextval,
'veryvery',
'hihichabooo',
'차보님짱짱짱짱짱짱'
);

SELECT * FROM MYUSER WHERE USERNO = 22;

SELECT * FROM MYUSER ORDER BY USERID ASC;

--DATA 수정

UPDATE MYUSER
SET USERID = 'IDID'
WHERE USERID = 'veryvery'

SELECT * FROM MYUSER WHERE USERID = 'IDID';

SELECT * FROM MYUSER WHERE EMAIL IS NULL;

DELETE FROM MYUSER
WHERE EMAIL IS NULL;

SELECT * FROM MYUSER WHERE EMAIL IS NULL;