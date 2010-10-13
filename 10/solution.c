// Solving Project Euler Problem #10
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <math.h>
using namespace std;

int is_prime(int * n) {
  // Not divisible by 2 or 3
  if (*n % 3 == 0)
    return (false);

  // No prime number has factors greater than the sqrt of itself.
  int max = int (sqrt ((double)*n));

  for (int i=3; i <= max; i+=2) {
    if (*n % i == 0)
      return(false);
  }
  return(true);
}

int main (int argc, char *argv[])
{
  long long max;
  if (argc == 2){
    max = atoi(argv[1]);
  } else {
    max = 2000000LL;
  }

  cout << "=== Summing all primes up to: " << max << "\n\n";

  long long total = 2 + 3;
  for (int n = 5; n < max; n += 2){
    if (is_prime (&n)) {
      total += n;
    }
    if ((n - 1) % 1000 == 0)
      cout << "\r" << n;
  }

  cout << "\r== Total: " << total << "\n\n";

  return 0;
}

