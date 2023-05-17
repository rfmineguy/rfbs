#ifndef TOML_H
#define TOML_H
#include <stdio.h>
#include <toml.h>

typedef struct {
  char output_name[100];
  char output_type[100];
  char output_target[100];

  char libs[100][100];
  int libs_count;

  char searchpaths[100][100];
  int searchpaths_count;

  char outputpath[100];

  char sources[100][100];
  int sources_count;

  int show_parse_tree;
  int generate_asm;

  TomlTable* table_handle;
} rfbs_data_t;

typedef struct {
  int show_parse_tree;
  int generate_asm;
} rfbs_build_features;

typedef enum {
  CONFIG_TABLE = 0,
  BUILD_TABLE,
  NAME_STRING,
  TYPE_STRING,
  TARGET_STRING,
  LIBS_ARRAY,
  SPATHS_ARRAY,
  FEAT_TABLE,
  FEAT_SHOW_PTREE,
  FEAT_GEN_ASM,
  FIELD_COUNT
} field_type_t;

void print_array(char[100][100], int);
int show_toml_buffer(TomlArray*);
int check_toml_type(TomlValue*, TomlType);

void show_rfbs_data(rfbs_data_t*);
rfbs_data_t process_toml_file(const char*);

#endif
