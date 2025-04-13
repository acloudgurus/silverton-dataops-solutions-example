-- noinspection SqlNoDataSourceInspectionForFile

--liquibase formatted sql

--changeset Wolfe:HSETL_WORK${dbEnv}.BLUEPRINT_SAMPLE_SPROC_1 runAlways:false runOnChange:true endDelimiter:/ labels:eds context:dev,test,prod
--comment: Create stored procedure HSETL_WORK${dbEnv}.BLUEPRINT_SAMPLE_SPOC_1

------------------------------------------------------------------------------------------
Create procedure HSETL_WORK${dbEnv}.BLUEPRINT_SAMPLE_SPROC_2 ()
BEGIN
INSERT INTO HSETL_WORK${dbEnv}.BLUEPRINT_SAMPLE_TABLE_1 (
  ETL_LOAD_DT_TM,
  ETL_LAST_UPDT_DT_TM,
  ETL_HASH_VAL,
  ETL_NK_HASH_VAL,
  CLM_ID,
  DIAGS_SEQ,
  DIAGS_TY_CD,
  SYS_ICD_DIAGS_CD,
  SRC_DATA_KEY,
  SYS_ICD_DIAGS_CD_VRSN,
  SYS_ICD_DIAGS_CD_DESC,
  DIAGS_TY_CD_DESC,
  SYS_POA_CD,
  SYS_POA_CD_DESC,
  TENANT_CD,
  IS_ENCNTR_IND,
  CLM_ICD_DIAGS_CD_VRSN,
  SRC_DATA_DESC,
  SYS_ICD_DIAG_CD_QUALR_CD,
  SYS_ICD_DIAG_CD_QUALR_DESC
)
VALUES (
  CURRENT_TIMESTAMP(0),
  CURRENT_TIMESTAMP(0),
  'dummy_hash_value',
  'dummy_nk_hash_value',
  'SAMPLE_CLM_ID',
  2,
  'Z99.9',
  'Z99.9',
  -1,
  2,
  'Dummy diagnosis description',
  'Dummy diagnosis type description',
  'ZZ',
  'Dummy procedure description',
  'UNUNUNUN',
  'Y',
  '02',
  'Dummy source data description',
  'NULL',
  'NULL'
);
END;
/

-- rollback drop procedure HSETL_WORK${dbEnv}.BLUEPRINT_SAMPLE_SPROC_1;
