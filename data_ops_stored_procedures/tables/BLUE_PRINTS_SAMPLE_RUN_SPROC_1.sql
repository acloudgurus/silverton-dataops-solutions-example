-- noinspection SqlNoDataSourceInspectionForFile

--liquibase formatted sql

--changeset JLai:HSETL_WORK${dbEnv}.BLUEPRINT_SAMPLE_RUN_SPROC_1 runAlways:true runOnChange:true endDelimiter:/ labels:eds context:dev,test,prod
--comment: Execute stored procedure HSETL_WORK${dbEnv}.BLUEPRINT_SAMPLE_SPOC_1

------------------------------------------------------------------------------------------
CALL HSETL_WORK${dbEnv}.BLUEPRINT_SAMPLE_SPROC_1 ();
