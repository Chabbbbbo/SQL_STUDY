CREATE TABLE MYUSER (
    USERNO NUMBER(10,0),--����Ŭ�ܿ� DB�ǰ�� INT(11)Ȥ�� �ٸ������ ���.
    USERID VARCHAR2(20),--ũ�Ⱑ ���� �����͸�ŭ �ڵ������Ǵ� VARCHAR2,�ݸ� VARCHAR�� ��� 20���δ� ���.
    USERPW VARCHAR(30),
    NICKNAME VARCHAR(30),
    EMAIL VARCHAR(50),
	PRIMARY KEY (USERNO)--PK ����Ű,���� �ٸ� ���� ������. ���̺��� ��ǥ,�����̵Ǵ� �������̴�.
); 

CREATE SEQUENCE SEQ_USER
START WITH 1 INCREMENT BY 1; -- �������� USERNO �ڵ� 1�� ����(����Ŭ ����)

INSERT INTO MYUSER(    -- DATA ADD
    USERNO,
    USERID,
    USERPW,
    NICKNAME,
    EMAIL
)
VALUES( -- �� col�� �´� data �Է�
SEQ_USER.nextval,
'id_chabo',
'hihichabo',
'������¯¯¯',
'chabbo@ddd.com'
);

INSERT INTO MYUSER(    -- DATA ADD (�̰� ������ �Ϸ��� �� ���� ���� ���� �� �־����)
    USERNO,
    USERID,
    USERPW,
    NICKNAME,
    EMAIL
)
VALUES( -- �� col�� �´� data �Է�
SEQ_USER.nextval,
'veryvery',
'hihichabooo',
'������¯¯¯¯¯¯',
'chabbo@ddd.com'
);

INSERT INTO MYUSER(    -- DATA ADD (�̰� ������ �Ϸ��� �� ���� ���� ���� �� �־����)
    USERNO,
    USERID,
    USERPW,
    NICKNAME

)
VALUES( -- �� col�� �´� data �Է�
SEQ_USER.nextval,
'veryvery',
'hihichabooo',
'������¯¯¯¯¯¯'
);

SELECT * FROM MYUSER WHERE USERNO = 22;

SELECT * FROM MYUSER ORDER BY USERID ASC;

--DATA ����

UPDATE MYUSER
SET USERID = 'IDID'
WHERE USERID = 'veryvery'

SELECT * FROM MYUSER WHERE USERID = 'IDID';

SELECT * FROM MYUSER WHERE EMAIL IS NULL;

DELETE FROM MYUSER
WHERE EMAIL IS NULL;

SELECT * FROM MYUSER WHERE EMAIL IS NULL;