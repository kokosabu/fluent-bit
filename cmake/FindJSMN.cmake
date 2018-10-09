set(_JSMN_REQUIRED_VARS JSMN_INCLUDE_DIR JSMN_LIBRARY)
 find_path(JSMN_INCLUDE_DIR jsmn.h
  PATHS /usr/include /sw/include /usr/local/include)
mark_as_advanced(JSMN_INCLUDE_DIR)
 find_library(JSMN_LIBRARY jsmn
  PATHS /usr/lib /lib /sw/lib /usr/local/lib)
mark_as_advanced(JSMN_LIBRARY)
 if (JSMN_INCLUDE_DIR AND JSMN_LIBRARY)
  SET(JSMN_FOUND True)
endif()
 include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(JSMN DEFAULT_MSG ${_JSMN_REQUIRED_VARS})
