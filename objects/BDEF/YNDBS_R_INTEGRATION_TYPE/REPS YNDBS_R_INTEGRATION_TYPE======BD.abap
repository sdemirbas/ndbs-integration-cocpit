managed implementation in class zbp_ndbs_r_integration_type unique;
strict ( 2 );

define behavior for YNDBS_R_INTEGRATION_TYPE //alias <alias_name>
persistent table yndbs_a_int_coc
lock master
late numbering
authorization master ( instance )
//etag master <field_name>
{
  create;
  update;
  delete;
  field ( readonly ) IntegrationId;


  mapping for yndbs_a_int_coc
    {
      IntegrationEntity      = integration_entity;
      IntegrationExampleLink = integration_example_link;
      IntegrationName        = integration_name;
      IntegrationId          = integration_id;
      DataType               = data_type;
      IsSynchronous          = is_synchronous;
      ServiceType            = service_type;
    }
}