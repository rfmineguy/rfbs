#include <stdio.h>
#include <stdlib.h>
#include <toml.h>
#include "file_change.h"
#include "toml_processing.h"

#define TEST_WRAPPER(testname, func) \
  printf("==================\n"); \
  printf("%s\n", testname); \
  func(); \
  printf("==================\n"); \


void test_toml() {
  rfbs_data_t build_info = process_toml_file("res/build.toml");
  show_rfbs_data(&build_info);


  /* Free toml data */
  toml_table_free(build_info.table_handle);
}

int main() {
  TEST_WRAPPER("Test Sha", test_sha);   // file_change.h
  TEST_WRAPPER("Test TOML", test_toml);
}
