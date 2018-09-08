#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define MAX_PRIMES 2000000

void
sundaram(void)
{
	long *sieve = (long *) calloc(MAX_PRIMES/2, sizeof(long));
	if (sieve == NULL)
		return;

	long i, j, k;
	for (i = 1; i < sqrt(MAX_PRIMES); i++)
		for (j = i; (k = i+j+2*i*j) < MAX_PRIMES/2; j++)
			sieve[k] = 1;

	long tot = 2;
	for (i = 1; i < MAX_PRIMES/2; i++)
		if (sieve[i] == 0)
			tot += 2*i+1;
	printf("%ld\n", tot);

	free(sieve);
}

int
main(void)
{
    sundaram();

    return EXIT_SUCCESS;
}
