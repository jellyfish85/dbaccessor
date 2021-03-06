INSERT INTO RR_TAB_COLUMNS
(
   TAB_DEF_ID
  ,TABLE_ID
  ,REVISION_AF
  ,REVISION_BF
  ,AUTHOUR
  ,UPDATOR
  ,LOGICAL_TABLE_TAG
  ,LOGICAL_TABLE_NAME
  ,PHYSICAL_TABLE_NAME
  ,TABLE_COMMENT
  ,COLUMN_ID
  ,LOGICAL_COLUMN_TAG
  ,LOGICAL_COLUMN_NAME
  ,PHYSICAL_COLUMN_NAME
  ,COLUMN_COMMENT
  ,DATA_TYPE
  ,DATA_LENGTH
  ,DATA_PRECISION
  ,DATA_DEFAULT
  ,DATA_SCALE
  ,PK_FLG
  ,NULLABLE
  ,TRKM_STATUS
  ,SEGOSEI_CHECK_STATUS
  ,SEGOSEI_CHECK_LOG_ID
  ,TICKET_NUMBER
  ,EXISTS_FLG
  ,TOROKUYMD
  ,TOROKUHMS
  ,TOROKUUSER
  ,KOSINYMD
  ,KOSINHMS
  ,KOSINUSER
)
VALUES
(
   ? /* 1, TAB_DEF_ID */
  ,? /* 2, TABLE_ID */
  ,? /* 3, REVISION_AF */
  ,? /* 4, REVISION_BF */
  ,? /* 5, AUTHOUR */
  ,? /* 6, UPDATOR */
  ,? /* 7, LOGICAL_TABLE_TAG */
  ,? /* 8, LOGICAL_TABLE_NAME */
  ,? /* 9, PHYSICAL_TABLE_NAME */
  ,? /* 10, TABLE_COMMENT */
  ,? /* 11, COLUMN_ID */
  ,? /* 12, LOGICAL_COLUMN_TAG */
  ,? /* 13, LOGICAL_COLUMN_NAME */
  ,? /* 14, PHYSICAL_COLUMN_NAME */
  ,? /* 15, COLUMN_COMMENT */
  ,? /* 16, DATA_TYPE */
  ,? /* 17, DATA_LENGTH */
  ,? /* 18, DATA_PRECISION */
  ,? /* 19, DATA_DEFAULT */
  ,? /* 20, DATA_SCALE */
  ,? /* 21, PK_FLG */
  ,? /* 22, NULLABLE */
  ,? /* 23, TRKM_STATUS */
  ,? /* 24, SEGOSEI_CHECK_STATUS */
  ,? /* 25, SEGOSEI_CHECK_LOG_ID */
  ,? /* 26, TICKET_NUMBER */
  ,? /* 27, EXISTS_FLG */
  ,TO_CHAR(SYSDATE,'YYYYMMDD')
  ,TO_CHAR(SYSDATE,'HH24MISS')
  ,SYS_CONTEXT('USERENV','MODULE')
  ,TO_CHAR(SYSDATE,'YYYYMMDD')
  ,TO_CHAR(SYSDATE,'HH24MISS')
  ,SYS_CONTEXT('USERENV','MODULE')
)