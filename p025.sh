#!/bin/ksh

# $Id: p025.sh,v 1.2 2018/10/01 17:56:56 hajime Exp $

# Project Euler #25
# Hajime Edakawa <hajime.edakawa@gmail.com>
# Public Domain

bc -e "
upper = 10^999
define fib(f1, f2, depth) {
	if (f1 >= upper) return depth
	return fib(f2, f1+f2, depth+1)
}
" |&

print -p "fib(1, 1, 1)"
read -p solution

echo $solution
