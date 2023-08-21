CREATE DATABASE SQLTEXT
GO
USE SQLTEXT
GO
CREATE TABLE USERROLE
(
    USERROLEID INT PRIMARY KEY,
	NGAY_KHOI_TAO DATE 	
)
GO
CREATE TABLE USER_PROFILE
(
    USERID INT PRIMARY KEY,
	USERNAME NVARCHAR(100),
	USERPASSWORD NCHAR(20),
	USERADRESS NVARCHAR(100),
	BIRTH_DATE DATE,
	PHONE INT,
    USERROLEID INT NOT NULL
)
GO
CREATE TABLE POST_PROFILE
(
    POSTID INT PRIMARY KEY,
	TENBV NVARCHAR (50),
	NOIDUNG NVARCHAR(1000),
	NGAYDANG DATE,
	TENPV NVARCHAR(50),
	TENBTV NVARCHAR(50),
	CHUDE NVARCHAR(50),
	ANH IMAGE,
	USERID INT NOT NULL
)
GO
CREATE TABLE THE_LOAI
(
    ID_THE_LOAI CHAR(10) PRIMARY KEY,
	TEN_THE_LOAI NVARCHAR(50),
	POSTID INT NOT NULL
)
CREATE TABLE POST_COMMENT
(
    COMMENTID INT PRIMARY KEY,
	NAMEUSER NVARCHAR(50),
	NOI_DUNG NVARCHAR(1000),
	POSTID INT NOT NULL
)
ALTER TABLE THE_LOAI
ADD CONSTRAINT POSTID
FOREIGN KEY (POSTID) REFERENCES POST_PROFILE(POSTID);

ALTER TABLE USER_PROFILE
ADD CONSTRAINT USERROLEID
FOREIGN KEY (USERROLEID) REFERENCES USERROLE(USERROLEID);

ALTER TABLE POST_PROFILE
ADD CONSTRAINT USERID
FOREIGN KEY (USERID) REFERENCES USER_PROFILE(USERID);

ALTER TABLE POST_COMMENT
ADD CONSTRAINT POSTID2
FOREIGN KEY (POSTID) REFERENCES POST_PROFILE(POSTID);

INSERT INTO USERROLE
VALUES (12340,'2021-01-01')
INSERT INTO USERROLE
VALUES (12341,'2021-01-02')
INSERT INTO USERROLE
VALUES (12342,'2021-01-03')
INSERT INTO USERROLE
VALUES (12343,'2021-01-04')
INSERT INTO USERROLE
VALUES (12344,'2021-01-05')
INSERT INTO USERROLE
VALUES (12345,'2021-01-06')
INSERT INTO USERROLE
VALUES (12346,'2021-01-07')
INSERT INTO USERROLE
VALUES (12347,'2021-01-08')
INSERT INTO USERROLE
VALUES (12348,'2021-01-09')
INSERT INTO USERROLE
VALUES (12349,'2021-01-10')

INSERT INTO USER_PROFILE
VALUES (1,'NGUYEN VAN A','abc123','HA NOI','1990-01-01',1234567890,12340)
INSERT INTO USER_PROFILE
VALUES (2,'NGUYEN VAN B','abc124','BAC GIANG','1990-01-02',1234567891,12341)
INSERT INTO USER_PROFILE
VALUES (3,'NGUYEN VAN C','abc125','QUANG BINH','1990-01-03',1234567892,12342)
INSERT INTO USER_PROFILE
VALUES (4,'NGUYEN VAN D','abc126','QUANG TRI','1990-01-04',1234567893,12343)
INSERT INTO USER_PROFILE
VALUES (5,'NGUYEN VAN E','abc127','THUA THIEN HUE','1990-01-05',1234567894,12344)
INSERT INTO USER_PROFILE
VALUES (6,'NGUYEN VAN F','abc128','DA NANG','1990-01-06',1234567895,12345)
INSERT INTO USER_PROFILE
VALUES (7,'NGUYEN VAN G','abc129','QUANG NAM','1990-01-07',1234567896,12346)
INSERT INTO USER_PROFILE
VALUES (8,'NGUYEN VAN H','abc122','PHU YEN','1990-01-08',1234567897,12347)
INSERT INTO USER_PROFILE
VALUES (9,'NGUYEN VAN K','abc121','QUANG NGAI','1990-01-09',1234567898,12348)
INSERT INTO USER_PROFILE
VALUES (10,'NGUYEN VAN T','abc120','BINH DINH','1990-01-10',1234567899,12349)

INSERT INTO POST_PROFILE
VALUES (110,'CUU TRAI DAT','?? c?u Tr�i ??t, c�c n??c c?n t? b? d?n nhi�n li?u h�a th?ch, nh?ng s? m?nh c� nguy c? d?n g�nh n?ng chi ph� l�n vai ng??i ngh�o.','2021-01-10','NGUYEN VAN A','NGUYEN VAN B','TU LIEU',NULL,1)
INSERT INTO POST_PROFILE
VALUES (111,'decision by Prime Minister','Under a new decision by Prime Minister Ph?m Minh Ch�nh,Gender issues must be integrated into law building and enforcement.','2021-01-11','NGUYEN VAN A','NGUYEN VAN B','TU LIEU',NULL,1)
INSERT INTO POST_PROFILE
VALUES (112,'gender equality','Changes to community ethical codes are expected to help increase gender equality in politics, economy, labour, education.','2021-01-12','NGUYEN VAN C','NGUYEN VAN D','KHOA HOC',NULL,3)
INSERT INTO POST_PROFILE
VALUES (113,'girls and women','It is expected that girls and women will be given more chances to participate in social activities.','2021-01-13','NGUYEN VAN C','NGUYEN VAN D','THE THAO',NULL,3)
INSERT INTO POST_PROFILE
VALUES (114,'cultural and civilised','Amended community ethical codes in Vi?t Nam helped raise public awareness on cultural and civilised lifestyles during weddings, funerals and festivals','2021-01-14','NGUYEN VAN E','NGUYEN VAN F','KINH TE',NULL,5)
INSERT INTO POST_PROFILE
VALUES (115,'equality communication','Under the Prime Minister�s decision on the gender equality communication programme issued on October 23, 2021, 95 per cent of village codes','2021-01-15','NGUYEN VAN E','NGUYEN VAN F','CHINH TRI',NULL,5)
INSERT INTO POST_PROFILE
VALUES (116,'village codes and conventions','By 2030, gender equality will be included in all village codes and conventions that are developed and implemented by the community from the grassroots levels','2021-01-16','NGUYEN VAN G','NGUYEN VAN H','GIAO DUC',NULL,7)
INSERT INTO POST_PROFILE
VALUES (117,'agencies and localities','Under the programme, in the next four years, all ministries, agencies and localities will have an annual plan on a month-long campaign to promote gender','2021-01-17','NGUYEN VAN G','NGUYEN VAN H','LAM DEP',NULL,7)
INSERT INTO POST_PROFILE
VALUES (118,'The Prime Minister','The Prime Minister also urges to further engage different stakeholders in communication work, mobilising resources and means.','2021-01-18','NGUYEN VAN G','NGUYEN VAN H','SONG KHOE',NULL,7)
INSERT INTO POST_PROFILE
VALUES (119,'businesses and people','The participation and response of agencies, organisations, businesses and people, especially leaders, managers, heads of agencies.','2021-01-19','NGUYEN VAN E','NGUYEN VAN F','NAM GIOI',NULL,5)

INSERT INTO THE_LOAI
VALUES ('ABC123','TU LIEU',110)
INSERT INTO THE_LOAI
VALUES ('ABC124','TU LIEU',111)
INSERT INTO THE_LOAI
VALUES ('ABC125','KHOA HOC',112)
INSERT INTO THE_LOAI
VALUES ('ABC126','THE THAO',113)
INSERT INTO THE_LOAI
VALUES ('ABC127','KINH THE',114)
INSERT INTO THE_LOAI
VALUES ('ABC128','CHINH TRI',115)
INSERT INTO THE_LOAI
VALUES ('ABC129','GIAO DUC',116)
INSERT INTO THE_LOAI
VALUES ('ABC120','LAM DEP',117)
INSERT INTO THE_LOAI
VALUES ('ABC121','SONG KHOE',118)
INSERT INTO THE_LOAI
VALUES ('ABC122','NAM GIOI',119)

USE SQLTEXT
INSERT INTO POST_COMMENT
VALUES (1111,'NGUYEN VAN K','HAY',110)
INSERT INTO POST_COMMENT
VALUES (1112,'NGUYEN VAN T','BAI VIET HAY',111)
INSERT INTO POST_COMMENT
VALUES (1113,'NGUYEN VAN K','NOI DUNG SAU SAC',112)
INSERT INTO POST_COMMENT
VALUES (1114,'NGUYEN VAN T','QUA TUYET VOI',113)
INSERT INTO POST_COMMENT
VALUES (1115,'NGUYEN VAN K','ABCXYZKTO',114)
INSERT INTO POST_COMMENT
VALUES (1116,'NGUYEN VAN T','ALDKDBKDTK',115)
INSERT INTO POST_COMMENT
VALUES (1117,'NGUYEN VAN K','ABCXITY',116)
INSERT INTO POST_COMMENT
VALUES (1118,'NGUYEN VAN T','XEA12DB',117)
INSERT INTO POST_COMMENT
VALUES (1119,'NGUYEN VAN K','ADKXBKTK',118)
INSERT INTO POST_COMMENT
VALUES (1110,'NGUYEN VAN T','ADXXFTBKK',119)

