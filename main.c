#include <stdio.h>
#include "conversion.h"

int main() {
  double inch, cm;
  printf("How many inches?");
  if (scanf("%lf", &inch)) {
    cm = inchesToCm(inch);
    printf("%.2lf inches is %.2lf cm\n", inch, cm);
  } else {
    printf("Invalid input!\n");
  }
  return 0;
}
