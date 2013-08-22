SELECT
		OWNER
	,	TABLE_NAME
	,	COLUMN_NAME
	,	DATA_TYPE
	,	DATA_TYPE_MOD
	,	DATA_TYPE_OWNER
	,	DATA_LENGTH
	,	DATA_PRECISION
	,	DATA_SCALE
	,	NULLABLE
	,	COLUMN_ID
	,	DEFAULT_LENGTH
	,	DATA_DEFAULT
	,	NUM_DISTINCT
	,	LOW_VALUE
	,	HIGH_VALUE
	,	DENSITY
	,	NUM_NULLS
	,	NUM_BUCKETS
	,	LAST_ANALYZED
	,	SAMPLE_SIZE
	,	CHARACTER_SET_NAME
	,	CHAR_COL_DECL_LENGTH
	,	GLOBAL_STATS
	,	USER_STATS
	,	AVG_COL_LEN
	,	CHAR_LENGTH
	,	CHAR_USED
	,	V80_FMT_IMAGE
	,	DATA_UPGRADED
	,	HISTOGRAM
FROM
    ALL_TAB_COLUMNS
WHERE
    OWNER = ?
AND TABLE_NAME = ?
ORDER BY
    COLUMN_ID
