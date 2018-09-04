#!/bin/ksh

# $Id: p006.sh,v 1.1 2018/09/04 11:58:19 hajime Exp $

# Project Euler #6
# Hajime Edakawa <hajime.edakawa@gmail.com>
# Public Domain

UPPER=100

integer sum1=0 sum2=0
for i in $(jot $UPPER); do
	let sum1+=i*i sum2+=i
done

echo $(( (sum2 * sum2) - sum1 ))
