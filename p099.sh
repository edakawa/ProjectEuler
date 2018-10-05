#!/bin/ksh

# $Id: p099.sh,v 1.1 2018/10/05 18:00:27 hajime Exp $

# Project Euler #99
# Hajime Edakawa <hajime.edakawa@gmail.com>
# Public Domain

bc -l |&
_file=p099_base_exp.txt

integer _line_no=1
while IFS=, read _base _exp; do
	print -p "l($_base)/l(10)*$_exp"
	read -p _result
	echo "$_line_no $_result"
	let _line_no++
done <$_file | sort -k 2 | tail -1 | awk '{ print $1 }'
