#include "toml_processing.h"
#include <string.h>
#include <stdlib.h>
#include <toml.h>

int is_toml_of_type(TomlValue* v, TomlType type) {
  return v->type == type;
}

TomlErrCode toml_table_get_w_er(TomlTable* tableIn, TomlValue** valueOut, const char* name, TomlType type) {
  TomlValue* v = toml_table_get(tableIn, name);
  int err = toml_err()->code;
  if (v && !is_toml_of_type(v, type)) {
    fprintf(stderr, "TOML::ERROR -> %d, %s\n", (int)toml_err()->code, toml_err()->message);
    toml_err_clear();
    *valueOut = NULL;
  }
  *valueOut = v;
  return err;
}

int check_toml_type(TomlValue* t, TomlType type) {
  return t->type == type;
}

rfbs_data_t process_toml_file(const char* filename) {
  rfbs_data_t data = {0};
  char errbuf[200] = {0};

  TomlTable *config_table = toml_load_filename(filename);
  data.table_handle = config_table;

  /*
   * Retrieve toml table for the build information
   */
  TomlValue* build_v      = toml_table_get(config_table, "build");
  if (build_v->type != TOML_TABLE) {
    fprintf(stderr, "'build' not a table\n");
  }
  TomlTable* build = build_v->value.table;

  /*
   * Retrieve toml table for the enabled features
   */
  TomlValue* features_v  = toml_table_get(build, "features");
  if (features_v->type != TOML_TABLE) {
    fprintf(stderr, "'features' not a table\n");
  }
  TomlTable* features = features_v->value.table;

  /*
   * Retrieve individual fields of the toml file
   *  NULL means it wasn't found
   */
  TomlValue* name        = toml_table_get(build, "name");
  TomlValue* type        = toml_table_get(build, "type");
  TomlValue* target      = toml_table_get(build, "target");
  TomlValue* libs        = toml_table_get(build, "libs"); 
  TomlValue* searchpaths = toml_table_get(build, "searchpaths");
  TomlValue* output_dir  = toml_table_get(build, "output-dir");
  TomlValue* sources     = toml_table_get(build, "sources");

  TomlValue* show_ptree  = toml_table_get(features, "show_parse_tree");
  TomlValue* gen_asm     = toml_table_get(features, "generate_asm");

  // NOTE: Important not to free tomlTable until end of program
  if (name && check_toml_type(name, TOML_STRING)) {
    strncpy(data.output_name, name->value.string->str, 100);
  }

  if (type && check_toml_type(type, TOML_STRING)) {
    strncpy(data.output_type, type->value.string->str, 100);
  }

  if (target && check_toml_type(target, TOML_STRING)) {
    strncpy(data.output_target, target->value.string->str, 100);
  }

  if (libs && check_toml_type(libs, TOML_ARRAY)) {
    TomlArray* a = libs->value.array;
    for (int i = 0; i < a->len; i++) {
      if (!check_toml_type(a->elements[i], TOML_STRING))
        continue;
      TomlString* s = a->elements[i]->value.string;
      strncpy(data.libs[i], s->str, 100);
      data.libs[i][s->len] = 0;
    }
    data.libs_count = a->len;
  }

  if (searchpaths && check_toml_type(searchpaths, TOML_ARRAY)) {
    TomlArray* a = searchpaths->value.array;
    for (int i = 0; i < a->len; i++) {
      if (!check_toml_type(a->elements[i], TOML_STRING))
        continue;
      TomlString* s = a->elements[i]->value.string;
      strncpy(data.searchpaths[i], s->str, 100);
      data.searchpaths[i][s->len] = 0;
    }
    data.searchpaths_count = a->len;
  }

  if (output_dir && check_toml_type(output_dir, TOML_STRING)) {
    strncpy(data.outputpath, output_dir->value.string->str, 100);
  }

  if (sources && check_toml_type(sources, TOML_ARRAY)) {
    TomlArray* a = sources->value.array;
    for (int i = 0; i < a->len; i++) {
      if (a->elements[i]->type != TOML_STRING)
        continue;
      strncpy(data.sources[i], a->elements[i]->value.string->str, 100);
    }
    data.sources_count = a->len;
  }

  if (show_ptree && check_toml_type(show_ptree, TOML_BOOLEAN)) {
    data.show_parse_tree = show_ptree->value.boolean;
  }

  if (gen_asm && check_toml_type(gen_asm, TOML_BOOLEAN)) {
    data.generate_asm = gen_asm->value.boolean;
  }

  return data;
}
