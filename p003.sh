#!/bin/ksh

# $Id: p003.sh,v 1.3 2018/09/06 12:22:43 hajime Exp $

# Project Euler #3
# Hajime Edakawa <hajime.edakawa@gmail.com>
# Public Domain

integer pf i=2 n=600851475143
while (( n > 1 )); do
	if (( n % i == 0 )); then
		let n/=i
		pf=i
	else
		let i++
	fi
done

echo $pf
