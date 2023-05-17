cmake_minimum_required(VERSION 3.20)

add_library(sha1
  sha1.c)

set_property(TARGET sha1 PROPERTY C_STANDARD 99)

target_include_directories(sha1 PUBLIC ../sha1 ../)
