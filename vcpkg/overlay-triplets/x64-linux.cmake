set(VCPKG_TARGET_ARCHITECTURE x64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE static)

set(VCPKG_CMAKE_SYSTEM_NAME Linux)


if (DEFINED ENV{MARCH})
    message("MARCH is set")
    set(MARCH_SETTING $ENV{MARCH})
else ()
    message("MARCH is not set. Using default value")
    set(MARCH_SETTING "x86-64")
endif ()

message("MARCH setting for VCPKG:  ${MARCH_SETTING}")


set(VCPKG_C_FLAGS "${VCPKG_C_FLAGS} -march=${MARCH_SETTING}")
set(VCPKG_CXX_FLAGS "${VCPKG_CXX_FLAGS} -march=${MARCH_SETTING}")