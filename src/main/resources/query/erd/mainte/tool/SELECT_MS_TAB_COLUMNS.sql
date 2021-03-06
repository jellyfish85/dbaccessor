SELECT
		TAB_DEF_ID
	,	TABLE_ID
	,	REVISION
	,	AUTHOUR
	,	UPDATOR
	,	LOGICAL_TABLE_TAG
	,	LOGICAL_TABLE_NAME
	,	PHYSICAL_TABLE_NAME
	,	TABLE_COMMENT
	,	COLUMN_ID
	,	LOGICAL_COLUMN_TAG
	,	LOGICAL_COLUMN_NAME
	,	PHYSICAL_COLUMN_NAME
	,	COLUMN_COMMENT
	,	DATA_TYPE
	,	DATA_LENGTH
	,	DATA_PRECISION
	,	DATA_DEFAULT
	,	DATA_SCALE
	,	PK_FLG
	,	NULLABLE
	,	TRKM_STATUS
	,	SEGOSEI_CHECK_STATUS
	,	SEGOSEI_CHECK_LOG_ID
	,	TICKET_NUMBER
	,	EXISTS_FLG
FROM
    MS_TAB_COLUMNS MS
WHERE
    PHYSICAL_TABLE_NAME = ?
ORDER BY
    COLUMN_ID DESC
