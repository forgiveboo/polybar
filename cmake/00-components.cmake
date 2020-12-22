option(DISABLE_ALL "Set this to ON disable all targets. Individual targets can be enabled explicitly." OFF)

# If all targets are disabled, we set the default value for options that are on
# by default to OFF
if (DISABLE_ALL)
  set(DEFAULT_ON OFF)
else()
  set(DEFAULT_ON ON)
endif()

option(BUILD_POLYBAR "Build the main polybar executable" ${DEFAULT_ON})
option(BUILD_POLYBAR_MSG "Build polybar-msg" ${DEFAULT_ON})
option(BUILD_TESTS "Build testsuite" OFF)
option(BUILD_DOC "Build documentation" ${DEFAULT_ON})

if (BUILD_POLYBAR OR BUILD_TESTS)
  set(BUILD_LIBPOLY ON)
else()
  set(BUILD_LIBPOLY OFF)
endif()

if (BUILD_LIBPOLY OR BUILD_POLYBAR_MSG)
  set(HAS_CXX_COMPILATION ON)
else()
  set(HAS_CXX_COMPILATION OFF)
endif()
