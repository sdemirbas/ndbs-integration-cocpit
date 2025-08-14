managed implementation in class zbp_ndbs_r_service_type unique;
strict ( 2 );

define behavior for YNDBS_R_SERVICE_TYPE //alias <alias_name>
persistent table yndbs_a_srv_typ
lock master
authorization master ( instance )
//etag master <field_name>
{
  create ( authorization : none );
  update;
  delete;

  mapping for yndbs_a_srv_typ
    {
      ServiceType     = service_type;
      ServiceTypeName = service_type_name;
    }
}