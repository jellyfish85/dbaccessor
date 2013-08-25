CREATE TABLE KR_TAB_DEF_REVISION
(
 	TAB_DEF_ID			NUMBER(38,0),
  	TAB_DEF_REVISION	NUMBER(38,0),
 	TAB_DEF_NAME		VARCHAR2(300 CHAR),
 	LAST_UPDATE_YMD		VARCHAR2(8   CHAR),
 	LAST_UPDATE_HHMISS	VARCHAR2(6   CHAR),
	UPDATE_FLG			CHAR(1 CHAR),
	NEW_FLG				CHAR(1 CHAR),
	SVN_REVISION		NUMBER(38,0),
	SVN_PATH			VARCHAR2(2000),
	EXISTS_FLG			CHAR(1) DEFAULT '1',
	TRKM_STATUS			CHAR(1),
	TOROKUYMD			VARCHAR2(8),
	TOROKUHMS			VARCHAR2(6),
	TOROKUUSER			VARCHAR2(50),
	KOSINYMD			VARCHAR2(8),
	KOSINHMS			VARCHAR2(6),
	KOSINUSER			VARCHAR2(50),
	BIKO				VARCHAR2(250)
)
;

ALTER TABLE KR_TAB_DEF_REVISION ADD CONSTRAINT PK_KR_TAB_DEF_REVISION PRIMARY KEY
(TAB_DEF_ID,TAB_DEF_REVISION);