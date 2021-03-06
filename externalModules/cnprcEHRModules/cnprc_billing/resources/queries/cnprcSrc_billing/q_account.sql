SELECT
ACCT_ID                                  AS  ACCT_ID
,ACCT_CHARGE_ID                          AS  CHARGE_ID
,ACCT_BEGIN_DATE                         AS  BEGIN_DATE
,ACCT_END_DATE                           AS  END_DATE
,ACCT_REPLACEMENT_ACCT_ID                AS  REPLACEMENT_ACCT_ID
,ACCT_TITLE                              AS  TITLE
,ACCT_INVESTIGATOR                       AS  INVESTIGATOR
,ACCT_FUND_TYPE                          AS  FUND_TYPE
,ACCT_COST_TYPE_SCHEME                   AS  COST_TYPE_SCHEME
,ACCT_BILLING_METHOD                     AS  BILLING_METHOD
,ACCT_BLANKET_ID                         AS  BLANKET_ID
,ACCT_BLANKET_SUB_OVERRIDE               AS  BLANKET_SUB_OVERRIDE
,ACCT_LAFS_LOCATION                      AS  LAFS_LOCATION
,ACCT_LAFS_ACCOUNT                       AS  LAFS_ACCOUNT
,ACCT_LAFS_FUND                          AS  LAFS_FUND
,ACCT_LAFS_SUB                           AS  LAFS_SUB
,ACCT_CLOSING_MONTHS                     AS  CLOSING_MONTHS
,ACCT_PO_REFERENCE                       AS  PO_REFERENCE
,ACCT_PO_ON_FILE                         AS  PO_ON_FILE
,ACCT_TAX_EXEMPT_REF                     AS  TAX_EXEMPT_REF
,ACCT_CLIENT_TYPE                        AS  CLIENT_TYPE
,ACCT_SHIP_TO_CA                         AS  SHIP_TO_CA
,ACCT_BILL_CONTACT_NAME                  AS  BILL_CONTACT_NAME
,ACCT_BILL_CONTACT_PHONE                 AS  BILL_CONTACT_PHONE
,ACCT_MAIL_COMPANY_NAME                  AS  MAIL_COMPANY_NAME
,ACCT_MAIL_DIVISION_NAME                 AS  MAIL_DIVISION_NAME
,ACCT_MAIL_STREET_ADDRESS                AS  MAIL_STREET_ADDRESS
,ACCT_MAIL_CITY                          AS  MAIL_CITY
,ACCT_MAIL_STATE_ABBREV                  AS  MAIL_STATE_ABBREV
,ACCT_MAIL_ZIP_CODE                      AS  MAIL_ZIP_CODE
,ACCT_MAIL_COUNTRY                       AS  MAIL_COUNTRY
,ACCT_IDFILE_BLANKET_ID                  AS  IDFILE_BLANKET_ID
,ACCT_IDFILE_LAFS_LOCATION               AS  IDFILE_LAFS_LOCATION
,ACCT_IDFILE_LAFS_ACCOUNT                AS  IDFILE_LAFS_ACCOUNT
,ACCT_IDFILE_LAFS_FUND                   AS  IDFILE_LAFS_FUND
,ACCT_IDFILE_LAFS_SUB                    AS  IDFILE_LAFS_SUB
,ACCT_IDFILE_TITLE                       AS  IDFILE_TITLE
,ACCT_IDFILE_LOOKUP_DATE                 AS  IDFILE_LOOKUP_DATE
,ACCT_CUR_BLANKET_ID                     AS  CUR_BLANKET_ID
,ACCT_CUR_LAFS_LOCATION                  AS  CUR_LAFS_LOCATION
,ACCT_CUR_LAFS_ACCOUNT                   AS  CUR_LAFS_ACCOUNT
,ACCT_CUR_LAFS_FUND                      AS  CUR_LAFS_FUND
,ACCT_CUR_LAFS_SUB                       AS  CUR_LAFS_SUB
,ACCT_CUR_CLEAR_FLAG                     AS  CUR_CLEAR_FLAG
,ACCT_CUR_MAILROOM_ZIP                   AS  CUR_MAILROOM_ZIP
,ACCT_CUR_MAIL_LINE_1                    AS  CUR_MAIL_LINE_1
,ACCT_CUR_MAIL_LINE_2                    AS  CUR_MAIL_LINE_2
,ACCT_CUR_MAIL_LINE_3                    AS  CUR_MAIL_LINE_3
,ACCT_CUR_MAIL_LINE_4                    AS  CUR_MAIL_LINE_4
,ACCT_CUR_MAIL_LINE_5                    AS  CUR_MAIL_LINE_5
,ACCT_CUR_MAIL_LINE_6                    AS  CUR_MAIL_LINE_6
,ACCT_CUR_MAIL_LINE_7                    AS  CUR_MAIL_LINE_7
,ACCT_BILL_CONTACT_FAX                   AS  BILL_CONTACT_FAX
,ACCT_BILL_CONTACT_EMAIL                 AS  BILL_CONTACT_EMAIL
,ACCT_AR_CUSTOMER_NO                     AS  AR_CUSTOMER_NO
,ACCT_REV_LAFS_LOCATION                  AS  REV_LAFS_LOCATION
,ACCT_REV_LAFS_ACCOUNT                   AS  REV_LAFS_ACCOUNT
,ACCT_REV_LAFS_FUND                      AS  REV_LAFS_FUND
,ACCT_REV_LAFS_SUB                       AS  REV_LAFS_SUB
,ACCT_LAFS_OBJ_OVERRIDE                  AS  LAFS_OBJ_OVERRIDE
,ACCT_CUR_LAFS_OBJ_OVERRIDE              AS  CUR_LAFS_OBJ_OVERRIDE
,ACCT_BLANKET_PROJECT_OVERRIDE           AS  BLANKET_PROJECT_OVERRIDE
,ACCT_CASP_FIN_COA_CD                    AS  CASP_FIN_COA_CD
,ACCT_CASP_ACCOUNT_NBR                   AS  CASP_ACCOUNT_NBR
,ACCT_CASP_SUB_ACCT_NBR                  AS  CASP_SUB_ACCT_NBR
,ACCT_CASP_PROJECT_CD                    AS  CASP_PROJECT_CD
,ACCT_CASP_OBJ_OVERRIDE                  AS  CASP_OBJ_OVERRIDE
,ACCT_IDT_CASP_FIN_COA_CD                AS  IDT_CASP_FIN_COA_CD
,ACCT_IDT_CASP_ACCOUNT_NBR               AS  IDT_CASP_ACCOUNT_NBR
,ACCT_IDT_CASP_SUB_ACCT_NBR              AS  IDT_CASP_SUB_ACCT_NBR
,ACCT_IDT_CASP_PROJECT_CD                AS  IDT_CASP_PROJECT_CD
,ACCT_CUR_CASP_FIN_COA_CD                AS  CUR_CASP_FIN_COA_CD
,ACCT_CUR_CASP_ACCOUNT_NBR               AS  CUR_CASP_ACCOUNT_NBR
,ACCT_CUR_CASP_SUB_ACCT_NBR              AS  CUR_CASP_SUB_ACCT_NBR
,ACCT_CUR_CASP_PROJECT_CD                AS  CUR_CASP_PROJECT_CD
,ACCT_CUR_CASP_OBJ_OVERRIDE              AS  CUR_CASP_OBJ_OVERRIDE
,ACCT_REV_CASP_FIN_COA_CD                AS  REV_CASP_FIN_COA_CD
,ACCT_REV_ACCOUNT_NBR                    AS  REV_ACCOUNT_NBR
,ACCT_REV_SUB_ACCT_NBR                   AS  REV_SUB_ACCT_NBR
,ACCT_REV_CASP_PROJECT_CD                AS  REV_CASP_PROJECT_CD
,ACCT_IDT_LOOKUP_DATE                    AS  IDT_LOOKUP_DATE
,ACCT_CASP_SUB_OBJ_CD                    AS  CASP_SUB_OBJ_CD
,ACCT_CUR_CASP_SUB_OBJ_CD                AS  CUR_CASP_SUB_OBJ_CD
,ACCT_REV_CASP_ACCOUNT_NBR               AS  REV_CASP_ACCOUNT_NBR
,ACCT_REV_CASP_OBJECT_CD                 AS  REV_CASP_OBJECT_CD
,ACCT_REV_CASP_SUB_OBJ_CD                AS  REV_CASP_SUB_OBJ_CD
,ACCT_IDT_BILLING_ID                     AS  IDT_BILLING_ID
,ACCT_CUR_CASP_BILLING_ID                AS  CUR_CASP_BILLING_ID
,ACCT_BILLING_ID                         AS  BILLING_ID
,ACCT_IDT_ACCT_NM                        AS  IDT_ACCT_NM
,ACCT_CUR_BILLING_ID                     AS  CUR_BILLING_ID
,ACCT_REV_CASP_SUB_ACCT_NBR              AS  REV_CASP_SUB_ACCT_NBR
,ACCT_BILLING_FUND_SOURCE_CODE           AS  BILLING_FUND_SOURCE_CODE
,ACCT_SD_CLIENT_NUD_EXEMPT_YN            AS  SD_CLIENT_NUD_EXEMPT_YN
,ACCT_SD_CLIENT_NUD_RATE_CODE            AS  SD_CLIENT_NUD_RATE_CODE
,ACCT_SD_CLIENT_MRKUP_EXEMPT_YN          AS  SD_CLIENT_MRKUP_EXEMPT_YN
,ACCT_TYPE_DESCRIPTION                   AS  TYPE_DESCRIPTION
,CNPRC_GRANT_INFO_TYPE                   AS  CNPRC_GRANT_INFO_TYPE
,GRANT_PROJECT_PERIOD_FK                 AS  GRANT_PROJECT_PERIOD_FK
,STUB_GRANT_NUMBER                       AS  STUB_GRANT_NUMBER
,STUB_GRANT_AGENCY                       AS  STUB_GRANT_AGENCY
,ACCT_GRANT_FUNDING_TYPE                 AS  GRANT_FUNDING_TYPE
,STUB_GRANT_PI_FK                        AS  STUB_GRANT_PI_FK
,CNPRC_PERSON_FK                         AS  CNPRC_PERSON_FK
,ACCT_CNPRC_INCOME_ACCOUNT_YN            AS  CNPRC_INCOME_ACCOUNT_YN
,ACCT_DAFIS_ORG_ID                       AS  DAFIS_ORG_ID
,ACCT_DAFIS_ORG_ID_LOOKUP_DATE           AS  DAFIS_ORG_ID_LOOKUP_DATE
,ACCT_DAFIS_REPORTS_TO_ORG_ID            AS  DAFIS_REPORTS_TO_ORG_ID
,ACCT_RATE_TIER_CODE_FK                  AS  RATE_TIER_CODE_FK
,Objectid
,Date_time
FROM cnprcSrc_billing.ZACCOUNT;