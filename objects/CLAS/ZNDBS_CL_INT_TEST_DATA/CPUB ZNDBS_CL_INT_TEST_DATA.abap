CLASS zndbs_cl_int_test_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES: BEGIN OF ty_response,
             log_id        TYPE sysuuid_x16,
             document_name TYPE string,
             status        TYPE c LENGTH 1,
             message       TYPE string,
           END OF ty_response.


    CLASS-DATA:
      gv_saving_status TYPE xsdboolean,
      gs_response      TYPE ty_response.


    INTERFACES       if_oo_adt_classrun.