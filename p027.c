#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

static int primes[(999*999)+(999*999)+1000];

static bool
isprime(int n)
{
	int i;

	n = abs(n);
	if (n < 2 || n % 2 == 0)
		return false;

	i = 3;
	for (;;) {
		if (n == i)
			return true;
		if (n % i == 0)
			return false;
		i += 2;
	}
}

int
main(void)
{
	int a, b, n, val, skip, longest;
	int _a, _b;

	longest = 0;
	for (a = -999; a < 1000; a++) {
		for (b = -1000; b <= 1000; b++) {
			skip = false;
			for (n = 0; n <= abs(a); n++) {
				val = n*n + a*n + b;
				if (val < 2) {
					skip = true;
					break;
				}
				if (primes[val] == 1)
					continue;
				if (primes[val] == -1) {
					skip = true;
					break;
				}
				if (isprime(val))
					primes[val] = 1;
				else {
					skip = true;
					primes[val] = -1;
					break;
				}
			}
			if (!skip && abs(a) > longest) {
				longest = abs(a);
				_a = a, _b = b;
			}
		}
	}
	printf("%d\n", _a*_b);

	return EXIT_SUCCESS;
}
