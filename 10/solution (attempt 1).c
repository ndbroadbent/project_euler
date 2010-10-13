// Solving Project Euler Problem #10
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string>
using namespace std;

int is_prime(int * n, int arr[]) {
  bool prime = true;
  int max_index = arr[0];
  for (int i=1; i <= max_index; i+=1) {
    prime = (*n % arr[i] != 0);
    if (!prime)
      return (false);
    // A prime number will not have any factors that are greater than half of itself.
    if (arr[i] > (*n / 2)){
      return (true);
    }
  }
  return (true);
}

int main (int argc, char *argv[])
{
  long long total = 10;
  // arr[0] keeps track of the array size.
  // (arr is seeded with the first 3 primes.)
  int arr[2000001] = {3, 2, 3, 5};

  for (int n=7; n < 2000000; n+=2){
    if (is_prime (&n, arr)) {
      arr[0] += 1;
      arr[arr[0]] = n;
      total += n;
    }
    if ((n-1) % 1000 == 0)
      cout << "\r" << n;
  }

  cout << "\r== Total: " << total << "\n\n";

  return 0;
}

