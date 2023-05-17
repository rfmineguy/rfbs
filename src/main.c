#include <stdio.h>
#include <stdlib.h>
#include <toml.h>
#include "file_change.h"
#include "toml_processing.h"
#include "argparse.h"
#include "args.h"

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

int build_program(args a) {
  printf("Searching for build.toml\n");

}

int main(int argc, const char** argv) {
  args a = get_args(argc, argv);

  /*
   * Analyze input arguments
   */
  char* realpath_build_dir = realpath(a.build_dir, NULL);
  char* realpath_run_dir = realpath(a.run_dir, NULL);

  printf("build_dir: %s\n", realpath_build_dir);
  printf("run_dir:   %s\n", realpath_run_dir);
  if (a.should_build) {
    printf("Building..\n");
  }

  free(realpath_build_dir);
  free(realpath_run_dir);

  // TEST_WRAPPER("Test Sha", test_sha);   // file_change.h
  // TEST_WRAPPER("Test TOML", test_toml);
}
