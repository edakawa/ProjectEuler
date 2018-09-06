#!/bin/ksh

# $Id: p009.sh,v 1.1 2018/09/06 14:39:48 hajime Exp $

# Project Euler #9
# Hajime Edakawa <hajime.edakawa@gmail.com>
# Public Domain

integer i=1 j=2 k
while (( i < 332 )); do
	let j=i+1
	while (( i+j < 665 )); do
		let k=1000-i-j
		if (( i*i+j*j == k*k )); then
			break 2
		fi
		let j++
	done
	let i++
done

echo $(( i*j*k ))
