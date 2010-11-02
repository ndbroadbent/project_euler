#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <math.h>
using namespace std;


int number_of_factors(unsigned long long * n) { 
  // Store factors in an array.
  int factors = 0;
  
  // No number has factors greater than the sqrt of itself.
  long long max = sqrt((long long)(*n)) + 1;
  
  long long x = 1;
  // Scan through all possible factors.
  while (x <= max) {
    if (*n % x == 0) {
      factors++;
    };
    x++;  
  }

  return(factors);
}

void find_max_triangle(){
  int factor_goal = 500;

  // Loop through all triangle numbers.
  unsigned long long triangle = 1;
  long last_addition = 1;
  int factor_count = 0;
  int max_factor_count = 0;
  
  printf ("== Searching for a triangle number with 500 factors...\n\n");

  while (factor_count < factor_goal) { 
  
    last_addition ++;
    triangle += last_addition;
   
    factor_count = number_of_factors(&triangle) ;
    if (factor_count > max_factor_count)
      max_factor_count = factor_count;

    if (last_addition % 10 == 0)
      printf ("\r? %lld    :: factors = %d    :: max factor so far = %d   :: last addition = %ld     ", triangle, factor_count, max_factor_count, last_addition); 
  };
  
  printf ("\n\n\n====== Found: %lld   :: factors = %d   :: last addition = %ld    \n\n", triangle, factor_count, last_addition);

}


unsigned long long triangle_for(int * count){
  unsigned long long triangle = 1;
  long last_addition = 1;
  
  for (int i=1; i <= *count; i++){
    last_addition ++;
    triangle += last_addition;
  };
  
  return triangle;
  
}

int main (int argc, char *argv[])
{ 
  
  find_max_triangle();
    /*
    
    int count = 0;
    
    unsigned long long triangle = 76576500; //triangle_for(&count);
    int factor_num = number_of_factors(&triangle);

      printf ("\n\n=== %lld is the triangle for %d iterations.\n\n", triangle, count);
      
      printf ("\n\n== %lld has %d factors. \n\n", triangle, factor_num);

*/

  return(0);
}

