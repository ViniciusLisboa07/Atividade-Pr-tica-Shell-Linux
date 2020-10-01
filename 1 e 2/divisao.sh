#!/bin/bash

if [ $1 -eq 0 ]||[ $2 -eq 0 ]
then
	echo "ERRO: Digite um valor diferete de zero: "
	echo
	echo "Deseja voltar ao menu [1-SIM/2-NÃO]"
	read MENU
	case $MENU in
	1) ./leitura.sh;;
	2) exit;;
	esac
fi

RESULT=0
RESULT=$(echo "scale=2; ($1/$2)" | bc)

./imprime.sh $RESULT 
