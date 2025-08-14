  METHOD add_log.
    IF mt_log IS INITIAL.
      APPEND INITIAL LINE TO mt_log ASSIGNING FIELD-SYMBOL(<lfs_log>).
    ELSE.
      READ TABLE mt_log ASSIGNING <lfs_log> INDEX 1.
    ENDIF.

    <lfs_log>              = CORRESPONDING #( is_log ).
    <lfs_log>-logid       = mv_log_id.
    <lfs_log>-log_date = get_datetime_turkey( ).
    <lfs_log>-duration     = get_duration( ).
  ENDMETHOD.