  METHOD if_oo_adt_classrun~main.
*    gv_saving_status = abap_false.
*    DATA(lo_obj) = NEW zndbs_cl_integration_util(  ).
*    gs_response-log_id = lo_obj->get_logid( ).
*
*    lo_obj->add_log_detail( VALUE #( step_status = ''  ) ).
**    DATA(lv_xml)   = extract_xml_from_multipart( gv_turpak_sales_json ).
**    DATA(lt_nodes) = parse_xml( iv_xml_string = lv_xml ).
**    DATA(ls_req)   = fill_structure_from_nodes( lt_nodes ).
*
**    FIND REGEX 'filename="([^."\r\n]+)' IN gv_turpak_sales_json SUBMATCHES gv_document_name.
*
*    lo_obj->add_log_detail( VALUE #( step_name = |{ gv_document_name } için veriler eşleştiriliyor.| step_status = 'S' ) ).
*
*    IF ls_req IS NOT INITIAL.
*      gs_turpak_sales_detail = ls_req.
*      modify_turpak_detail( it_turpak_detail = ls_req ).
*    ENDIF.
*
*    IF gv_saving_status EQ abap_true.
*      lo_obj->add_log_detail( VALUE #( step_name = 'Veri tabanına kaydedildi' step_status = 'S' ) ).
*    ENDIF.
*
*    gs_response-document_name = gv_document_name.
*    gs_response-message       = |{ gv_document_name } için kayıt başarılı|.
*    gs_response-status        = 'S'.
*
*    gv_response = xco_cp_json=>data->from_abap( gs_response )->apply( VALUE #( ( xco_cp_json=>transformation->underscore_to_pascal_case ) ) )->to_string( ).
*
*    lo_obj->add_log( VALUE #( service_name     = 'TurpakSalesOrderIntegration'
*                              service_type     = 'Inbound'
*                              request_payload  = gv_turpak_sales_json
*                              response_payload = gv_response
*                              status           = 'S'
*                              error_message    = gs_response-message ) ).
*
*    lo_obj->save_logs( ).
  ENDMETHOD.