#!/bin/ksh

# $Id: p005.sh,v 1.5 2018/09/06 12:22:43 hajime Exp $

# Project Euler #5
# Hajime Edakawa <hajime.edakawa@gmail.com>
# Public Domain

UPPER=20

set -A se $(jot $UPPER)
integer i=$((UPPER-2)) j=$((UPPER-1))
while (( 0 < i )); do
	integer n=${se[$i]} m=${se[$j]}
	while (( 0 < n )); do
		let n=m%n m=$n
	done
	let se[i]=$((se[i]*se[j]/m)) i-- j--
done

echo ${se[1]}
