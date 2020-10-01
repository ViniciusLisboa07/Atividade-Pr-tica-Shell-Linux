#!/bin/bash
echo
echo "ÁREA é: $1 cm²"
echo
echo -n "Deseja voltar ao menu: [S/N]: "
read MENU

if [ $MENU = "S" ]||[ $MENU = "s" ]
then
	./leitura.sh
else
	 exit
fi

