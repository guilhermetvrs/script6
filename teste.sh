#!/bin/bash

if [ -n "$a" -a "$a" != "" ]; then
	echo "têm valor é" $a

elif [ -z "$a" ]; then
	echo "a é vazio"
	read  -p " insira o valor dejado" a
	echo $a
fi

if [ -n "${b}" -a "${b}" != "" ]; then
	echo "tem valor é " $b

elif [ -z "$b" ]; then
	echo "b é vazio"
 	read -p "insira o valor desejado" b
	echo $b
fi

if [ -n "$c" -a "$c" != "" ]; then
	echo "tem valor é " $c

elif [ -z "$c" ]; then
	echo "c é vazio"
	read -p " insira o valor desejado" c
	echo $c
fi

echo -e "Os valores das variáveis a b c são respectivamente" ${a}  ${b} ${c}
