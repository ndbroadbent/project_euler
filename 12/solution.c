#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <math.h>
using namespace std;


int number_of_factors(unsigned long long * n) { 
  // Store factors in an array.
  unsigned long factors[500] = {0};
  
  // No number has factors greater than the sqrt of itself.
  unsigned long max = unsigned long (sqrt ((long double)*n));
  
  unsigned long test = ;
  while (test < max) {
    if (*n % *test == 0) {
      
    } else {
      
    };
      
      printf ("x = %d\n", x);
      x++;
  }
    
  

  for (int i=3; i <= max; i+=2) {
    if (*n % i == 0)
      return(false);
  }
  return(true);
}


int main (int argc, char *argv[])
{ 
  

  return(0);
}

