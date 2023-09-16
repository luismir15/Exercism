#include "armstrong_numbers.h"
#include "math.h"
#include "stdlib.h"

bool is_armstrong_number(int candidate) {
  int length;
  int* digits = convertNumberIntoArray(number, &length);
  int sum = 0;
  for (int i = 0; i < length; i++) {
    sum += pow(digits[i], length);
  }

  free(digits);

  return sum == number;
}

int* convertNumberIntoArray(int number, int* length) {
  *length = (int)floor(log10((float)abs(number))) +1;
  int* arr = (int*) malloc(*length * sizeof(int));
  
  int i = 0;
  do {
    arr[i] = abs(number) % 10;
    number /= 10;
    i++;
  } while(number != 0);
  
  return arr;
}
