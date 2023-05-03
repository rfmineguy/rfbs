cmake_minimum_required(VERSION 3.20)

project(rfbs LANGUAGES C)
set(SOURCES
  src/main.c)

include (FetchContent)
FetchContent_Declare(
  argparse
  GIT_REPOSITORY https://github.com/cofyc/argparse.git
  GIT_TAG v1.1.0
)
FetchContent_GetProperties(argparse)
if (NOT argparse_POPULATED)
  FetchContent_Populate(argparse)
  message(${argparse_SOURCE_DIR})
  add_subdirectory(${argparse_SOURCE_DIR})
endif()

FetchContent_Declare(
  tomlc99
  GIT_REPOSITORY https://github.com/cktan/tomlc99.git
)
FetchContent_GetProperties(tomlc99)
if (NOT tomlc99_POPULATED)
  FetchContent_Populate(tomlc99)
  file(COPY cmake/tomlc99/CMakeLists.txt DESTINATION ${tomlc99_SOURCE_DIR})
  message(${tomlc99_SOURCE_DIR})
  add_subdirectory(${tomlc99_SOURCE_DIR})
endif()

add_executable(rfbs ${SOURCES})
target_link_libraries(rfbs argparse m tomlc99)
target_include_directories(rfbs PRIVATE ${argparse_SOURCE_DIR} ${tomlc99_SOURCE_DIR})

#install(TARGET rfbs)
