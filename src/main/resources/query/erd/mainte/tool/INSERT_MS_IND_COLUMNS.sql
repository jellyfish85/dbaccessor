INSERT INTO MS_IND_COLUMNS
(
   INDEX_NAME
  ,REVISION
  ,TABLE_ID
  ,COLUMN_ID
  ,COLUMN_NAME
  ,COLUMN_POSITION
  ,TOROKUYMD
  ,TOROKUHMS
  ,TOROKUUSER
  ,KOSINYMD
  ,KOSINHMS
  ,KOSINUSER
)
VALUES
(
   ? /* 1, INDEX_NAME */
  ,? /* 2, REVISION */
  ,? /* 3, TABLE_ID */
  ,? /* 4, COLUMN_ID */
  ,? /* 5, COLUMN_NAME */
  ,? /* 6, COLUMN_POSITION */
  ,TO_CHAR(SYSDATE,'YYYYMMDD')
  ,TO_CHAR(SYSDATE,'HH24MISS')
  ,SYS_CONTEXT('USERENV','MODULE')
  ,TO_CHAR(SYSDATE,'YYYYMMDD')
  ,TO_CHAR(SYSDATE,'HH24MISS')
  ,SYS_CONTEXT('USERENV','MODULE')
)