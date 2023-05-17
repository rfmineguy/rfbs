#include "args.h"
#include "argparse.h"

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
    OPT_STRING('d', "build-dir", &a.build_dir, "Directory to build", NULL, 0, 0),
    OPT_STRING('r', "run-dir", &a.run_dir, "Directory to run", NULL, 0, 0),
    OPT_BOOLEAN(' ', "build", &a.should_build, "Build the specified directory", NULL, 0, 0),
    OPT_BOOLEAN(' ', "run", &a.should_run, "Run the specified directory", NULL, 0, 0),
    OPT_END()
  };

  struct argparse argparse;
  argparse_init(&argparse, options, usages, 0);
  argc = argparse_parse(&argparse, argc, argv);
  if (!a.build_dir) {
    a.build_dir = ".";
  }
  if (!a.run_dir) {
    a.run_dir = ".";
  }

  return a;
}
