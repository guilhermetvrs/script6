#!/bin/bash

echo "Diretorios"
##i corresponde a dir
for i in *; do
	if [-d $i]; then
		echo $i
	fi
done
echo "Arquivos"
##i corresponde a arq
for i in *; do
	if[-f $i]; then
		echo $i
	fi
done
echo "Links"
##i corresponde a link
for i in *; do
	if [-L $i]; then
		echo $i
	fi
done
