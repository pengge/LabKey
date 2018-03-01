SELECT
BILLC_KEY                             AS BILLC_KEY
,BILLC_FED_EIN                         AS FED_EIN
,BILLC_DEPT_NAME                       AS DEPT_NAME
,BILLC_SERVICE_DEPT_NO                 AS SERVICE_DEPT_NO
,BILLC_JOURNAL_SUFFIX                  AS JOURNAL_SUFFIX
,BILLC_PREPARER_NAME                   AS PREPARER_NAME
,BILLC_PREPARER_PHONE                  AS PREPARER_PHONE
,BILLC_EXMEMO_NAME                     AS EXMEMO_NAME
,BILLC_ICMEMO_NAME                     AS ICMEMO_NAME
,BILLC_PERIOD_ENDING_DATE              AS PERIOD_ENDING_DATE
,BILLC_SALES_TAX_RATE                  AS SALES_TAX_RATE
,BILLC_FIRST_INVOICE_NO                AS FIRST_INVOICE_NO
,BILLC_NEXT_INVOICE_NO                 AS NEXT_INVOICE_NO
,PERDIEM_START_DATE                    AS PERDIEM_START_DATE
,PERDIEM_ENDING_DATE                   AS PERDIEM_ENDING_DATE
,BILLC_NUD_A_RATE_PART_A               AS NUD_A_RATE_PART_A
,BILLC_NUD_A_SERVICE_CODE              AS NUD_A_SERVICE_CODE
,BILLC_NUD_A_RC_CODE                   AS NUD_A_RC_CODE
,BILLC_NUD_A_COST_CODE                 AS NUD_A_COST_CODE
,BILLC_NUD_A_BILLING_METHOD            AS NUD_A_BILLING_METHOD
,BILLC_NUD_A_COLLECTION_ACCT           AS NUD_A_COLLECTION_ACCT
,BILLC_NUD_A_SUB_OBJECT_CODE           AS NUD_A_SUB_OBJECT_CODE
,BILLC_NUD_B_RATE_PART_B               AS NUD_B_RATE_PART_B
,BILLC_NUD_B_SERVICE_CODE              AS NUD_B_SERVICE_CODE
,BILLC_NUD_B_RC_CODE                   AS NUD_B_RC_CODE
,BILLC_NUD_B_COST_CODE                 AS NUD_B_COST_CODE
,BILLC_NUD_B_BILLING_METHOD            AS NUD_B_BILLING_METHOD
,BILLC_NUD_B_COLLECTION_ACCT           AS NUD_B_COLLECTION_ACCT
,BILLC_NUD_B_SUB_OBJECT_CODE           AS NUD_B_SUB_OBJECT_CODE
,BILLC_NUD_C_RATE_PART_C               AS NUD_C_RATE_PART_C
,BILLC_NUD_C_SERVICE_CODE              AS NUD_C_SERVICE_CODE
,BILLC_NUD_C_RC_CODE                   AS NUD_C_RC_CODE
,BILLC_NUD_C_COST_CODE                 AS NUD_C_COST_CODE
,BILLC_NUD_C_BILLING_METHOD            AS NUD_C_BILLING_METHOD
,BILLC_NUD_C_COLLECTION_ACCT           AS NUD_C_COLLECTION_ACCT
,BILLC_NUD_C_SUB_OBJECT_CODE           AS NUD_C_SUB_OBJECT_CODE
,CENTRAL_SPPLY_STATUS_CLOSED_YN        AS CS_STATUS_CLOSED_YN
,CENTRAL_SPPLY_STATUS_SET_BY           AS CENTRAL_SPPLY_STATUS_SET_BY
,CENTRAL_SPPLY_STATUS_TIMESTAMP        AS CS_STATUS_TIMESTAMP
,PERDIEM_STATUS_CLOSED_YN              AS PERDIEM_STATUS_CLOSED_YN
,PERDIEM_STATUS_SET_BY                 AS PERDIEM_STATUS_SET_BY
,PERDIEM_STATUS_TIMESTAMP              AS PERDIEM_STATUS_TIMESTAMP
,WORK_ORDERS_STATUS_CLOSED_YN          AS WO_STATUS_CLOSED_YN
,WORK_ORDERS_STATUS_SET_BY             AS WORK_ORDERS_STATUS_SET_BY
,WORK_ORDERS_STATUS_TIMESTAMP          AS WO_STATUS_TIMESTAMP
,CORE_SERVICES_STATUS_CLOSED_YN        AS CORE_SERV_STATUS_CLOSED_YN
,CORE_SERVICES_STATUS_SET_BY           AS CORE_SERVICES_STATUS_SET_BY
,CORE_SERVICES_STATUS_TIMESTAMP        AS CORE_SERV_STATUS_TIMESTAMP
,BILLC_PERIOD_START_DATE               AS PERIOD_START_DATE
,BILLC_SD_NEXT_CREDIT_MEMO_NO          AS SD_NEXT_CREDIT_MEMO_NO
,Objectid
,Date_time
FROM cnprcSrc_billing.zbilling_control
