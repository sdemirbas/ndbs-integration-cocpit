  METHOD constructor.

    TRY.
        IF iv_logid IS INITIAL.
          mv_log_id = cl_system_uuid=>create_uuid_x16_static( ).
        ELSE.

          SELECT MAX( detail_id ) AS max_detail_id
            FROM yndbs_a_int_stp WITH PRIVILEGED ACCESS
           WHERE log_id = @iv_logid
            INTO @mv_detail_index.

          SELECT *
            FROM yndbs_a_int_log WITH PRIVILEGED ACCESS
           WHERE logid = @iv_logid
            INTO TABLE @mt_log.

          mv_log_id = iv_logid.

        ENDIF.
      CATCH cx_uuid_error.
    ENDTRY.

    mv_begin_datetime = get_datetime_turkey( ).
  ENDMETHOD.