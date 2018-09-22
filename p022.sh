#!/bin/ksh

# $Id: p022.sh,v 1.1 2018/09/22 08:45:43 hajime Exp $

# Project Euler #22
# Hajime Edakawa <hajime.edakawa@gmail.com>
# Public Domain

local _name _c
integer i=1 j=0 tot=0
for _name in $((sed 's/","/ /g' | sed 's/"//g' | tr ' ' '\n' | sort) <names.txt); do
	for _c in $(echo $_name | sed 's/./ &/g'); do
		case $_c in
		A) let j+=1 ;;
		B) let j+=2 ;;
		C) let j+=3 ;;
		D) let j+=4 ;;
		E) let j+=5 ;;
		F) let j+=6 ;;
		G) let j+=7 ;;
		H) let j+=8 ;;
		I) let j+=9 ;;
		J) let j+=10 ;;
		K) let j+=11 ;;
		L) let j+=12 ;;
		M) let j+=13 ;;
		N) let j+=14 ;;
		O) let j+=15 ;;
		P) let j+=16 ;;
		Q) let j+=17 ;;
		R) let j+=18 ;;
		S) let j+=19 ;;
		T) let j+=20 ;;
		U) let j+=21 ;;
		V) let j+=22 ;;
		W) let j+=23 ;;
		X) let j+=24 ;;
		Y) let j+=25 ;;
		Z) let j+=26 ;;
		esac
	done
	let tot+=i*j
	let i++ j=0
done

print $tot
