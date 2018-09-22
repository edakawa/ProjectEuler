#!/bin/ksh

# $Id: p020.sh,v 1.1 2018/09/22 08:04:51 hajime Exp $

# Project Euler #20
# Hajime Edakawa <hajime.edakawa@gmail.com>
# Public Domain

bc -e "
	define fact(n) {
		if (n == 1) return(1)
		return n * fact(n-1)
	}
" |&

local _buf
print -p "fact(100)"
read -p _buf

integer sum=0
for i in $(echo $_buf | sed 's/./ &/g'); do
	let sum+=$i
done

print $sum
