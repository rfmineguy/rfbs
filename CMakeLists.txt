cmake_minimum_required(VERSION 3.20)

project(rfbs LANGUAGES C)
set(SOURCES
  src/main.c
  src/toml_processing.c
  src/file_change.c
  )
#set(TOMLC99_SOURCES
#  src/tomlc99/toml.c
#  )

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -ggdb -ferror-limit=100 -fsanitize=address")
file (COPY res DESTINATION ${CMAKE_BINARY_DIR})

include (FetchContent)
FetchContent_Declare(
  argparse
  GIT_REPOSITORY https://github.com/cofyc/argparse.git
  GIT_TAG v1.1.0
)
FetchContent_MakeAvailable(argparse)

FetchContent_Declare(
  libtoml
  GIT_SHALLOW ON
  GIT_REPOSITORY https://github.com/brglng/libtoml.git
)
FetchContent_MakeAvailable(libtoml)

FetchContent_Declare(
  sha1
  GIT_REPOSITORY https://github.com/clibs/sha1.git
)
FetchContent_GetProperties(sha1)
if (NOT sha1_POPULATED)
  FetchContent_Populate(sha1)
  file(COPY cmake/sha1/CMakeLists.txt DESTINATION ${sha1_SOURCE_DIR})
  message(${sha1_SOURCE_DIR})
  add_subdirectory(${sha1_SOURCE_DIR})
endif()

add_executable(rfbs ${SOURCES})
target_link_libraries(rfbs
  argparse
  m
  sha1
  toml::toml
  )

target_include_directories(rfbs PRIVATE ${argparse_SOURCE_DIR} ${libtoml_SOURCE_DIR} ${sha1_SOURCE_DIR} src/)

#install(TARGET rfbs)
