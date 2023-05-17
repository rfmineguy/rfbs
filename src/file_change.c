#include "file_change.h"
#include "sha1-src/sha1.h"
#include <stdio.h>
#include <string.h>

void test_sha() {
  const char* s = "This is a string";
  const char* t = "Another string";
  unsigned char result[21];
  char hexresult[41];
  size_t offset;

  SHA1_CTX ctx;
  SHA1Init(&ctx);
  SHA1Update(&ctx, s, strlen(s));
  SHA1Update(&ctx, t, strlen(t));
  SHA1Final(result, &ctx);

  for (offset = 0; offset < 20; offset++) {
    sprintf((hexresult + (2*offset)), "%02x", result[offset] & 0xff);
  }
  printf("%s\n", hexresult);
}
