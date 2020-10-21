#!/bin/bash


cont=0
if [ $# -eq 3 ]; then
	for arq in $*;do
		linha=$(cat $arq | wc -l)
		if [ $linha -ge 5 ]; then
			cont+=1
			echo $arq >> arqs
		else
			continue
		fi
	done
fi
if [ $cont -ge 2 ]; then
	echo "Os arquivos que passaram do tamanho crítico."
	cat arqs
else
	echo "quantidade insuficiente"
fi

rm arqs
