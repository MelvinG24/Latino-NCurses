INCLUDE(CheckFunctionExists)

CHECK_FUNCTION_EXISTS(vsnprintf PDC_HAVE_VSNPRINTF)
CHECK_FUNCTION_EXISTS(vsscanf PDC_HAVE_VSSCANF)

IF(PDC_HAVE_VSNPRINTF)
    ADD_DEFINITIONS(-DHAVE_VSNPRINTF)
ENDIF(PDC_HAVE_VSNPRINTF)
IF(PDC_HAVE_VSSCANF)
    ADD_DEFINITIONS(-DHAVE_VSSCANF)
ENDIF(PDC_HAVE_VSSCANF)

if (PDC_BUILD_SHARED)
    if(MSVC)
        add_definitions(-DPDC_DLL_BUILD)
    endif()
endif (PDC_BUILD_SHARED)
IF (PDC_WIDE)
    ADD_DEFINITIONS(-DPDC_WIDE)
ENDIF(PDC_WIDE)
IF (PDC_UTF8)
    ADD_DEFINITIONS(-DPDC_FORCE_UTF8)
ENDIF (PDC_UTF8)
IF (PDC_CHTYPE_32)
    ADD_DEFINITIONS(-DCHTYPE_32)
ENDIF (PDC_CHTYPE_32)
IF(PDCDEBUG)
    ADD_DEFINITIONS(-DPDCDEBUG)
ENDIF(PDCDEBUG)

IF ("${CMAKE_BUILD_TYPE}" STREQUAL "Debug")
    ADD_DEFINITIONS(-D_DEBUG)
ENDIF ()

#################################
# Target Arch                   #
#################################
# include (target_arch)
# get_target_arch(TARGET_ARCH)
message(STATUS "Target ................. ${TARGET_ARCH}")