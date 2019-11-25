#include <stdio.h>

int main() {
  char name[100];
  printf("What is your name?");
  if (scanf("%99[^\n]", name) == 1) {
    printf("Hello %s!\n", name);
  } else {
    printf("You didn't tell me your name!\n");
  }
  return 0;
}
