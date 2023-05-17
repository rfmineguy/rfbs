#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
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

#define COMMAND(fmt, ...) \

int sys_command(const char* fmt, ...) {
  static char buffer[255] = {0};
  va_list args;
  va_start(args, fmt);
  vsnprintf(buffer, 255, fmt, args);
  va_end(args);
  printf("Running: %s\n", buffer);
  return system(buffer);
}

void test_toml() {
  rfbs_data_t build_info = process_toml_file("res/build.toml");
  show_rfbs_data(&build_info);

  /* Free toml data */
  toml_table_free(build_info.table_handle);
}

rfbs_data_t get_rfbs_data(args a) {
  char buff[PATH_MAX] = {0};
  strcat(buff, a.build_dir);
  strcat(buff, "/build.toml");
  printf("%s\n", buff);
  FILE* f = fopen(buff, "r");
  if (!f) {
    fprintf(stderr, "No build.toml present in current directory\n");
    fclose(f);
    exit(90);
  }
  return process_toml_file(buff);
}

void build(args a) {
  rfbs_data_t d = get_rfbs_data(a);
  show_rfbs_data(&d);

  //
  // use the rfbs_data here
  //
  for (int i = 0; i < d.sources_count; i++) {
    sys_command("cat $(pwd)/%s", d.sources[i]);
  }


  toml_table_free(d.table_handle);
}

int main(int argc, const char** argv) {
  args a = get_args(argc, argv);

  printf("build_dir: %s\n", a.build_dir);
  printf("run_dir:   %s\n", a.run_dir);
  
  if (a.should_build) {
    build(a);
  }

  free((void*)a.build_dir);
  free((void*)a.run_dir);

  // TEST_WRAPPER("Test Sha", test_sha);   // file_change.h
  // TEST_WRAPPER("Test TOML", test_toml);
}
