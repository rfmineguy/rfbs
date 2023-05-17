# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/rileyfischer/Documents/dev/languages/rfbs/build/_deps/sha1-src"
  "/Users/rileyfischer/Documents/dev/languages/rfbs/build/_deps/sha1-build"
  "/Users/rileyfischer/Documents/dev/languages/rfbs/build/_deps/sha1-subbuild/sha1-populate-prefix"
  "/Users/rileyfischer/Documents/dev/languages/rfbs/build/_deps/sha1-subbuild/sha1-populate-prefix/tmp"
  "/Users/rileyfischer/Documents/dev/languages/rfbs/build/_deps/sha1-subbuild/sha1-populate-prefix/src/sha1-populate-stamp"
  "/Users/rileyfischer/Documents/dev/languages/rfbs/build/_deps/sha1-subbuild/sha1-populate-prefix/src"
  "/Users/rileyfischer/Documents/dev/languages/rfbs/build/_deps/sha1-subbuild/sha1-populate-prefix/src/sha1-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/rileyfischer/Documents/dev/languages/rfbs/build/_deps/sha1-subbuild/sha1-populate-prefix/src/sha1-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/rileyfischer/Documents/dev/languages/rfbs/build/_deps/sha1-subbuild/sha1-populate-prefix/src/sha1-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
