#!/bin/ksh

# $Id: p005.sh,v 1.8 2018/09/06 12:57:27 hajime Exp $

# Project Euler #5
# Hajime Edakawa <hajime.edakawa@gmail.com>
# Public Domain

UPPER=20

set -A se $(jot $UPPER)
integer i=UPPER-2 j=UPPER-1
while (( 0 < i )); do
	integer n=se[i] m=se[j]
	while (( n != 0 )); do
		let n=m%n m=$n
	done
	let se[i]=se[i]*se[j]/m i-- j--
done

echo ${se[1]}
