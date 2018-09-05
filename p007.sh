#!/bin/ksh

# $Id: p007.sh,v 1.3 2018/09/05 01:53:34 hajime Exp $

# Project Euler #7
# Hajime Edakawa <hajime.edakawa@gmail.com>
# Public Domain

UPPER=1000
set -A PRIMES 2 3

bc |&

function is_prime {
	local n=$1 root

	print -p "sqrt($n)"
	read -p root

	for p in ${PRIMES[*]}; do
		if (( p > root )); then
			break
		elif (( n % p == 0 )); then
			return 1
		fi
	done

	PRIMES[${#PRIMES[*]}]=$n
	return 0
}

integer found=2 n=5 ret
while (( found < $UPPER )); do
	is_prime $n
	if [[ $? -eq 0 ]]; then
		let found++
	fi
	let n+=2
done

echo ${PRIMES[$((UPPER-1))]}
