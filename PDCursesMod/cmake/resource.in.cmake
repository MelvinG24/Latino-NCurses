//{{NO_DEPENDENCIES}}
// Used by version.rc
//
#define PRODUCT_VERSION_MAJOR                  @PRODUCT_VERSION_MAJOR@
#define PRODUCT_VERSION_MINOR                  @PRODUCT_VERSION_MINOR@
#define PRODUCT_VERSION_PATCH                  @PRODUCT_VERSION_PATCH@
#define PRODUCT_VERSION_BUILD                  @PRODUCT_VERSION_BUILD@

#define FILE_VERSION_MAJOR                     @FILE_VERSION_MAJOR@
#define FILE_VERSION_MINOR                     @FILE_VERSION_MINOR@
#define FILE_VERSION_PATCH                     @FILE_VERSION_PATCH@
#define FILE_VERSION_BUILD                     @FILE_VERSION_BUILD@

#ifndef __TO_STRING
#define __TO_STRING_IMPL(x) #x
#define __TO_STRING(x) __TO_STRING_IMPL(x)
#endif

#define PRODUCT_VERSION_MAJOR_MINOR_STR        __TO_STRING(PRODUCT_VERSION_MAJOR) "." __TO_STRING(PRODUCT_VERSION_MINOR)
#define PRODUCT_VERSION_MAJOR_MINOR_PATCH_STR  PRODUCT_VERSION_MAJOR_MINOR_STR "." __TO_STRING(PRODUCT_VERSION_PATCH)
#define PRODUCT_VERSION_FULL_STR               PRODUCT_VERSION_MAJOR_MINOR_PATCH_STR "." __TO_STRING(PRODUCT_VERSION_BUILD)
#define PRODUCT_VERSION_RESOURCE               PRODUCT_VERSION_MAJOR,PRODUCT_VERSION_MINOR,PRODUCT_VERSION_PATCH,PRODUCT_VERSION_BUILD
#define PRODUCT_VERSION_RESOURCE_STR           PRODUCT_VERSION_FULL_STR "\0"

#define FILE_VERSION_MAJOR_MINOR_STR           __TO_STRING(FILE_VERSION_MAJOR) "." __TO_STRING(FILE_VERSION_MINOR)
#define FILE_VERSION_MAJOR_MINOR_PATCH_STR     FILE_VERSION_MAJOR_MINOR_STR "." __TO_STRING(FILE_VERSION_PATCH)
#define FILE_VERSION_FULL_STR                  FILE_VERSION_MAJOR_MINOR_PATCH_STR "." __TO_STRING(FILE_VERSION_BUILD)
#define FILE_VERSION_RESOURCE                  FILE_VERSION_MAJOR,FILE_VERSION_MINOR,FILE_VERSION_PATCH,FILE_VERSION_BUILD
#define FILE_VERSION_RESOURCE_STR              FILE_VERSION_FULL_STR "\0"


#define PRODUCT_FILE_DESCRIPTION              "@PRODUCT_FILE_DESCRIPTION@\0"
#define PRODUCT_INTERNAL_NAME                 "@PRODUCT_INTERNAL_NAME@\0"
#define PRODUCT_COMPANY_COPYRIGHT             "@PRODUCT_COMPANY_COPYRIGHT@\0"
#define PRODUCT_ORIGINAL_FILENAME             "@PRODUCT_ORIGINAL_FILENAME@\0"
#define PRODUCT_NAME                          "@PRODUCT_NAME@\0"
#define PRODUCT_ICON                          "@PRODUCT_ICON@"

#define VS_VERSION_INFO                        1
#define IDC_STATIC                             -1


// Next default values for new objects
// 
#ifdef APSTUDIO_INVOKED
#ifndef APSTUDIO_READONLY_SYMBOLS
#define _APS_NEXT_RESOURCE_VALUE              101
#define _APS_NEXT_COMMAND_VALUE               40001
#define _APS_NEXT_CONTROL_VALUE               1000
#define _APS_NEXT_SYMED_VALUE                 101
#endif
#endif
