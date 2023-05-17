#include "args.h"
#include "argparse.h"
#include <stdlib.h>

static const char *const usages[] = {
    "basic [options] [[--] args]",
    "basic [options]",
    NULL,
};
static const char *const defaults[] = {

};
args get_args(int argc, const char** argv) {
  args a = {0};
  struct argparse_option options[] = {
    OPT_HELP(),
    OPT_STRING('d', "build-dir", &a.build_dir, "Directory to build (default='.')", NULL, 0, 0),
    OPT_STRING('r', "run-dir", &a.run_dir, "Directory to run (default='.')", NULL, 0, 0),
    OPT_BOOLEAN(' ', "build", &a.should_build, "Build the specified directory", NULL, 0, 0),
    OPT_BOOLEAN(' ', "run", &a.should_run, "Run the specified directory", NULL, 0, 0),
    OPT_END()
  };

  struct argparse argparse;
  argparse_init(&argparse, options, usages, 0);
  argc = argparse_parse(&argparse, argc, argv);

  // Either use the supplied directory or the current directory
  if (!a.build_dir) {
    a.build_dir = realpath(".", NULL);
  }
  else {
    a.build_dir = realpath(a.build_dir, NULL);
  }

  // Either use the supplied directory or the current directory
  if (!a.run_dir) {
    a.run_dir = realpath(".", NULL);
  }
  else {
    a.run_dir = realpath(a.run_dir, NULL);
  }

  return a;
}
