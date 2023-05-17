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

void print_array(char array[100][100], int count) {
  printf("[");
  for (int i = 0; i < count; i++) {
    printf("%s", array[i]);
    if (i != count - 1) {
      printf(", ");
    }
  }
  printf("]\n");
}

void test_toml() {
  rfbs_data_t build_info = process_toml_file("res/build.toml");

  /* General build information */
  printf("  name: %s\n", build_info.output_name);
  printf("  type: %s\n", build_info.output_type);
  printf("  target: %s\n", build_info.output_target);
  printf("  output-dir: %s\n", build_info.outputpath);

  /* Libs to link/build */
  printf("  libs: ");        print_array(build_info.libs, build_info.libs_count);
  printf("  searchpaths: "); print_array(build_info.searchpaths, build_info.searchpaths_count);
  printf("  sources: ");     print_array(build_info.sources, build_info.sources_count);

  /* Features */
  printf("  show_parse_tree: %s\n", build_info.show_parse_tree ? "true": "false");
  printf("  generate_asm: %s\n", build_info.show_parse_tree ? "true": "false");


  /* Free toml data */
  toml_table_free(build_info.table_handle);
}

int main() {
  TEST_WRAPPER("Test Sha", test_sha);
  TEST_WRAPPER("Test TOML", test_toml);
}
