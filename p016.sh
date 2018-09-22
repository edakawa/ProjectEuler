#!/bin/ksh

# $Id: p016.sh,v 1.1 2018/09/22 07:33:18 hajime Exp $

# Project Euler #16
# Hajime Edakawa <hajime.edakawa@gmail.com>
# Public Domain

integer sum=0
for i in $(echo "2^1000" | bc | sed 's/\\//' | sed 's/./ &/g'); do
	let sum+=$i
done

print $sum
