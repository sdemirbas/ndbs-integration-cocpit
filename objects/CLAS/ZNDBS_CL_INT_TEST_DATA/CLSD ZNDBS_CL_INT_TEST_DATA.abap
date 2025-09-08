class-pool .
*"* class pool for class ZNDBS_CL_INT_TEST_DATA

*"* local type definitions
include ZNDBS_CL_INT_TEST_DATA========ccdef.

*"* class ZNDBS_CL_INT_TEST_DATA definition
*"* public declarations
  include ZNDBS_CL_INT_TEST_DATA========cu.
*"* protected declarations
  include ZNDBS_CL_INT_TEST_DATA========co.
*"* private declarations
  include ZNDBS_CL_INT_TEST_DATA========ci.
endclass. "ZNDBS_CL_INT_TEST_DATA definition

*"* macro definitions
include ZNDBS_CL_INT_TEST_DATA========ccmac.
*"* local class implementation
include ZNDBS_CL_INT_TEST_DATA========ccimp.

*"* test class
include ZNDBS_CL_INT_TEST_DATA========ccau.

class ZNDBS_CL_INT_TEST_DATA implementation.
*"* method's implementations
  include methods.
endclass. "ZNDBS_CL_INT_TEST_DATA implementation
