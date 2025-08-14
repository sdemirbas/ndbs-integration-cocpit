  PRIVATE SECTION.
    METHODS: get_duration RETURNING VALUE(rv_time) LIKE sy-uzeit.
    DATA: mo_instance       TYPE REF TO zndbs_cl_integration_util,
          mt_log            TYPE TABLE OF yndbs_a_int_log,
          mt_log_detail     TYPE TABLE OF yndbs_a_int_stp,
          mv_detail_index   TYPE int4 VALUE 0,
          mv_log_id         TYPE sysuuid_x16,
          mv_begin_datetime TYPE yndbs_e_log_datetime.
