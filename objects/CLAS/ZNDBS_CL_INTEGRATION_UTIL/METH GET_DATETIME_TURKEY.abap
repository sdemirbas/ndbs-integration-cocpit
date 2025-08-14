  METHOD get_datetime_turkey.
    GET TIME STAMP FIELD DATA(lv_timestamp).
    TRY.
        CONVERT TIME STAMP lv_timestamp
          TIME ZONE mc_time_zone_tr
          INTO DATE DATA(lv_date)
               TIME DATA(lv_time).


        CONVERT DATE lv_date TIME lv_time
          INTO TIME STAMP rv_datetime
          TIME ZONE mc_time_zone_utc.
      CATCH cx_abap_context_info_error.
    ENDTRY.
  ENDMETHOD.