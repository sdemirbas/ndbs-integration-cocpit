  METHOD save_logs.
    IF mt_log IS NOT INITIAL.
      MODIFY yndbs_a_int_log FROM TABLE @mt_log.
    ENDIF.

    IF mt_log_detail IS NOT INITIAL.
      MODIFY yndbs_a_int_stp FROM TABLE @mt_log_detail.
    ENDIF.

    IF iv_behavior IS INITIAL.
      COMMIT WORK AND WAIT.
    ENDIF.
  ENDMETHOD.