#!/bin/ksh

# $Id: p004.sh,v 1.1 2018/09/02 14:49:08 hajime Exp $

# Project Euler #4
# Hajime Edakawa <hajime.edakawa@gmail.com>
# Public Domain

perl -nle 'local $|=1; print scalar reverse $_' |&

let i=1 buf=0 max=0
while (( $i <= 999 )); do
    let j=$i
    while (( $j <= 999 )); do
        let buf=$i*$j
        print -p $buf
	read -p rev
        if [[ $buf = $rev ]]; then
            if (( $buf > $max )); then
                let max=$buf
            fi
        fi

        let j+=1
    done
    let i+=1
done

echo $max
