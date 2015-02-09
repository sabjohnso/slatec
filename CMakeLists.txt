########################################################################
#
# File: slatec/CMakeLists.txt
#
# Purpose: This is the top level build script for the SLATEC library.
#
# Author: Samuel B. Johnson
#
# Revision History: Feb. 8, 2015 - Created
#
# 

cmake_minimum_required( VERSION 2.8.4 )


project( cml )
enable_language( Fortran )




#
# ... Options
#
option( BUILD_SHARED_LIBRARY "Build the shared library?" ON )
option( BUILD_TESTS "Build the SLATEC tests?" ON )


include( exclude_from_shared.cmake )


#
# ... Build the libraries
#
add_subdirectory( src )




#
# ... Optionally, build the suite of tests.
#
if( BUILD_TESTS )
  
  enable_testing()
  link_directories( ${CMAKE_CURRENT_BINARY_DIR}/src )
  add_subdirectory( test )
  
endif()
