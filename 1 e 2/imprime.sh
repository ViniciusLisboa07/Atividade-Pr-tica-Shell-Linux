#!/bin/bash
echo
echo "Resultado: $1"
echo
echo -n "Deseja voltar ao menu: [S/N]: "
read MENU

if [ $MENU = "S" ]||[ $MENU = "s" ]
then
	./leitura.sh
else
	 exit
fi

