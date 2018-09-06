#!/bin/ksh

# $Id: p009.sh,v 1.2 2018/09/06 15:03:30 hajime Exp $

# Project Euler #9
# Hajime Edakawa <hajime.edakawa@gmail.com>
# Public Domain

integer i=1 j=2 k
while (( i < 332 )); do
	let j=i+1
	while (( i+j < 665 )); do
		if (( i+j+j+1 > 1000 )); then
			break
		fi
		let k=1000-i-j
		if (( i*i+j*j == k*k )); then
			break 2
		fi
		let j++
	done
	let i++
done

echo $(( i*j*k ))
