#include "armstrong_numbers.h"

#include <math.h>
#include <stdio.h>
#include <string.h>

bool is_armstrong_number(int candidate) {
  char buffer[20];
  int length;
  int digit, sum = 0;

  sprintf(buffer, "%d", candidate);
  length = strlen(buffer);

  for(int i = 0; i < length; i++) {
    digit = buffer[i] - '0';
    sum += pow(digit, length);
  }

  if(sum == candidate) 
    return true;
  else
    return false;
}