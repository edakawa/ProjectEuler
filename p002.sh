#!/bin/ksh

# $Id: p002.sh,v 1.1 2018/08/28 23:23:54 hajime Exp $

# Project Euler #2
# Hajime Edakawa <hajime.edakawa@gmail.com>
# Public Domain

integer fib1=1 fib2=2 sum=0
while (( $fib1 < 4000000 )); do
	if (( ($fib1 & 1) == 0 )); then
		let sum+=$fib1
	fi
	let fib1=$fib2 fib2+=$fib1
done

echo $sum
