# @HEADER
# *****************************************************************************
#            TriBITS: Tribal Build, Integrate, and Test System
#
# Copyright 2013-2016 NTESS and the TriBITS contributors.
# SPDX-License-Identifier: BSD-3-Clause
# *****************************************************************************
# @HEADER

include(AdvancedSet)

set( ${PROJECT_NAME}_HOSTTYPE_DEFAULT ${CMAKE_HOST_SYSTEM_NAME} )

advanced_set( ${PROJECT_NAME}_HOSTTYPE ${${PROJECT_NAME}_HOSTTYPE_DEFAULT}
  CACHE STRING
  "Name used to identify a system system type (defaults to ${CMAKE_HOST_SYSTEM_NAME})"
   )
