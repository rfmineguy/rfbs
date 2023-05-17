cmake_minimum_required(VERSION 3.20)

add_library(tomlc99
  toml.c
)

set_property(TARGET tomlc99 PROPERTY C_STANDARD 99)

target_include_directories(tomlc99 PUBLIC ../tomlc99-build ../tomlc99-src)
