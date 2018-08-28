#!/bin/ksh

# $Id: p001.sh,v 1.1.1.1 2018/08/28 14:08:23 hajime Exp $

# Project Euler #1
# Hajime Edakawa <hajime.edakawa@gmail.com>
# Public Domain

integer sum=0
for i in $(jot 999); do
    if (( i % 3 == 0 )); then
        let sum+=$i
    elif (( i % 5 == 0 )); then
        let sum+=$i
    fi
done

echo $sum
