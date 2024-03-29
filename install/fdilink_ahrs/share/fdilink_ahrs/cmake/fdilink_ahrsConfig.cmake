# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_fdilink_ahrs_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED fdilink_ahrs_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(fdilink_ahrs_FOUND FALSE)
  elseif(NOT fdilink_ahrs_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(fdilink_ahrs_FOUND FALSE)
  endif()
  return()
endif()
set(_fdilink_ahrs_CONFIG_INCLUDED TRUE)

# output package information
if(NOT fdilink_ahrs_FIND_QUIETLY)
  message(STATUS "Found fdilink_ahrs: 0.0.0 (${fdilink_ahrs_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'fdilink_ahrs' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${fdilink_ahrs_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(fdilink_ahrs_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${fdilink_ahrs_DIR}/${_extra}")
endforeach()
