#ifndef ARGS_H
#define ARGS_H
#include <stdlib.h>

typedef struct {
  const char* build_dir;
  const char* run_dir;
  int should_build;
  int should_run;
} args;

args get_args(int, const char**);

#endif
