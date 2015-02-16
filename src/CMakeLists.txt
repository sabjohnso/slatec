########################################################################
#
# File: slatec/src/CMakeLists.txt
#
# Purpose: Build script for the SLATEC library.
#
# Author: Samuel B. Johnson
#
# Revision History: Feb. 8, 2015 - Created
#
#


#
# ... Due to the large number of source files, a list of source files was
#     placed in a separate file, which is included below.
#
include( slatec_source_files.cmake )


if( USE_OPTIMIZED_BLAS )
  list( REMOVE_ITEM SLATEC_SOURCE_FILES ${BLAS_SOURCE_FILES} )
  list( APPEND SLATEC_SOURCE_FILES ${RETAINED_BLAS_SOURCE_FILES} )
endif()


#
# ... Build the static library
#
add_library( slatec_static ${SLATEC_SOURCE_FILES} )
set_target_properties( slatec_static PROPERTIES OUTPUT_NAME slatec )
install( TARGETS slatec_static ARCHIVE DESTINATION lib )

#
# ... Optionally, build the share library.
#
if( BUILD_SHARED_LIBRARY )

  list( REMOVE_ITEM SLATEC_SOURCE_FILES ${EXCLUDE_FROM_SHARED} )
  
  add_library( slatec_shared SHARED ${SLATEC_SOURCE_FILES} )
  set_target_properties( slatec_shared PROPERTIES OUTPUT_NAME slatec )
  install( TARGETS slatec_shared LIBRARY DESTINATION lib )
  
endif()
