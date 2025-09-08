CLASS zndbs_cl_integration_util DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CONSTANTS: mc_time_zone_tr  LIKE sy-zonlo VALUE 'TURKEY',
               mc_time_zone_utc LIKE sy-zonlo VALUE 'UTC'.

    TYPES: tty_log        TYPE TABLE OF yndbs_a_int_log,
           tty_log_detail TYPE TABLE OF yndbs_a_int_stp,
           BEGIN OF ty_log,
             service_name     TYPE yndbs_e_integration_id,
             service_type     TYPE yndbs_e_service_type,
             trigger_type     TYPE yndbs_e_trigger_type,
             request_payload  TYPE yndbs_e_request_payload,
             response_payload TYPE yndbs_e_response_payload,
             status           TYPE yndbs_e_status,
             error_message    TYPE yndbs_e_error_message,
           END OF ty_log,
           BEGIN OF ty_log_detail,
             step_status    TYPE yndbs_e_integration_status,
             step_error_msg TYPE yndbs_e_error_message,
           END OF ty_log_detail.
    CLASS-METHODS:
      get_instance RETURNING VALUE(ro_instance) TYPE REF TO zndbs_cl_integration_util,
      get_datetime_turkey RETURNING VALUE(rv_datetime) TYPE yndbs_e_log_datetime.
    METHODS:
      constructor IMPORTING iv_logid TYPE sysuuid_x16 OPTIONAL,
      get_logid RETURNING VALUE(rv_logid) TYPE sysuuid_x16,
      add_log IMPORTING is_log TYPE ty_log,
      add_log_detail IMPORTING is_log_detail TYPE ty_log_detail,
      save_logs IMPORTING iv_behavior TYPE abap_boolean DEFAULT abap_false.
