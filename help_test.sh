#!/bin/bash

echo $* >> tamoanotando.txt

cond1=$(grep "logica" tamoanotando.txt |wc -l)
cond2=$(grep "aritmetica" tamoanotando.txt |wc -l)
cond3=$(grep "strings" tamoanotando.txt |wc -l)
cond4=$(grep "variaveis" tamoanotando.txt |wc -l)
cond5=$(grep "arquivos" tamoanotando.txt |wc -l)

if ((cond1>=1)); then
	echo -e "-gt\n-ge\n-lt\nle\n-eq\n==\n!=\n-z\n-n\n-d\n-e\n-f"
fi
if ((cond2>=1)); then
	echo "test 10 -gt 5, verifica se um valor é maior que o outro."
	echo "test 5 -ge 5, verifica se um valor é maior ou igual que o outro."
	echo "test 2 -lt 7, verifica se um valor é menor que o outro."
	echo "test 10 -le 10, verifica se um valor é menor ou igual a outro."
	echo "test 1 -eq 1, verifica se um valor é igual a outro."
fi
if ((cond3>=1)); then
	echo "test 'palavra' == 'palavra', verifica se a string é igual a outro."
	echo "test 'palavra' != 'errado', verifica se a string é diferente que a outra."
	echo "test -z 'palavra', verifica se a string é vazia."
	echo "test -n 'palavra', verifica se a string existe e se não é vazia."
fi
if ((cond4>=1)); then
	echo "test -z $variavel, verifica se a variável é vazia."
	echo "test -n $variavel, verifica se a variável não é vazia."
	echo "test $a -gt $b , verifica se uma variável é maior que a outra."
	echo "test $a -ge $b , verifica se uma variável é maior ou igual que a outra."
	echo "test $a -lt $b , verifica se uma variável é menor que a outra."
	echo "test $a -le $b , verifica se uma variável é menor ou igual que a outra."
	echo "test $a -eq $b , verifica se uma variável(se os dois forem inteiros) é maior que a outra."
	echo "test $a == $b, verifica se as variáveis são iguais(so se forem strings."
	echo "test $a != $b, verifica se as variáveis são diferente."
fi
if ((cond5>=1)); then
	echo "test -d arquivo, verifica se o arquivo existe e é um diretório"
	echo "test -e arquivo, verifica se o arquivo existe"
	echo "test -f arquivo, verifica se o arquivo existe e é um arquivo comum"
	echo "test -x arquivo, verifica se o arquivo existe e é executável"
	echo "test -L arquivo, verifica se o arquivo existe e é um link simbólico"
fi

$(rm tamoanotando.txt)

