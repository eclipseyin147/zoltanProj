#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "zoltan" for configuration "Release"
set_property(TARGET zoltan APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(zoltan PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/zoltan.lib"
  )

list(APPEND _cmake_import_check_targets zoltan )
list(APPEND _cmake_import_check_files_for_zoltan "${_IMPORT_PREFIX}/lib/zoltan.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
