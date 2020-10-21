#!/bin/bash

diratual=$(ls)
set $diratual
for i in $diratual; do
	linhai=$(cat $i | wc -l)
	shift 1
	for j in $*; do
		linhaj=$(cat $j | wc -l)
		if [ $linhai -eq $linhaj ];then
			if [ -d $i -a -d $j ];then
				echo "Os arquivos" $i, $j "possuem o mesmo número de linhas e são diretórios."
			elif [ -f $i -a -d $j ];then
				echo "Os arquivos" $i, $j "possuem o mesmo número de linhas onde o" $i "é um arquivo comum e o" $j "é um diretório."
			elif [ -d $i -a -f $j ];then
				echo "Os arquivos "$i, $j "possuem o mesmo número de linhas onde o" $i "é um diretório e o "$j "é um arquivo comum."
			elif [ -f $i -a -f $j ];then
				echo "Os arquivos" $i, $j "possuem o mesmo número de linhas e são arquivos comuns."

			else
				continue
			fi
		else
			continue
		fi
	done
done
