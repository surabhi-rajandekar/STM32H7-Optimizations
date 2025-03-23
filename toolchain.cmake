set(CMAKE_SYSTEM_NAME               Generic)
set(CMAKE_SYSTEM_PROCESSOR          arm)

# Some default GCC settings
# arm-none-eabi- must be part of path environment
set(TOOLCHAIN_PATH                  "/Applications/ArmGNUToolchain/13.3.rel1/arm-none-eabi/")
set(TOOLCHAIN_PREFIX                arm-none-eabi-)
set(TOOLCHAIN_BIN_DIR               ${TOOLCHAIN_PATH}/bin)
#set(TOOLCHAIN_EXT                    ".exe" )

# Without that flag CMake is not able to pass test compilation check
set(CMAKE_TRY_COMPILE_TARGET_TYPE   STATIC_LIBRARY)

set(CMAKE_AR                        ${TOOLCHAIN_BIN_DIR}/arm-none-eabi-ar)
set(CMAKE_ASM_COMPILER              ${TOOLCHAIN_BIN_DIR}/arm-none-eabi-gcc)
set(CMAKE_C_COMPILER                ${TOOLCHAIN_BIN_DIR}/arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER              ${TOOLCHAIN_BIN_DIR}/arm-none-eabi-g++)
set(CMAKE_LINKER                    ${TOOLCHAIN_BIN_DIR}/arm-none-eabi-ld)
set(CMAKE_OBJCOPY                   ${TOOLCHAIN_BIN_DIR}/arm-none-eabi-objcopy CACHE INTERNAL "")
set(CMAKE_RANLIB                    ${TOOLCHAIN_BIN_DIR}/arm-none-eabi-ranlib CACHE INTERNAL "")
set(CMAKE_SIZE                      ${TOOLCHAIN_BIN_DIR}/arm-none-eabi-size CACHE INTERNAL "")
set(CMAKE_STRIP                     ${TOOLCHAIN_BIN_DIR}/arm-none-eabi-strip CACHE INTERNAL "")

set(CMAKE_C_FLAGS                   "-Wno-psabi -Wno-sign-compare -fdata-sections -ffunction-sections -Wl,--gc-sections" CACHE INTERNAL "")
set(CMAKE_CXX_FLAGS                 "${CMAKE_C_FLAGS} -fno-exceptions" CACHE INTERNAL "")

set(CMAKE_C_FLAGS_DEBUG             "-Os -g" CACHE INTERNAL "")
set(CMAKE_C_FLAGS_RELEASE           "-Os -DNDEBUG" CACHE INTERNAL "")
set(CMAKE_CXX_FLAGS_DEBUG           "${CMAKE_C_FLAGS_DEBUG}" CACHE INTERNAL "")
set(CMAKE_CXX_FLAGS_RELEASE         "${CMAKE_C_FLAGS_RELEASE}" CACHE INTERNAL "")

set(CMAKE_EXECUTABLE_SUFFIX_ASM     ".elf")
set(CMAKE_EXECUTABLE_SUFFIX_C       ".elf")
set(CMAKE_EXECUTABLE_SUFFIX_CXX     ".elf")

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# Without that flag CMake is not able to pass test compilation check
set(CMAKE_TRY_COMPILE_TARGET_TYPE   STATIC_LIBRARY)
