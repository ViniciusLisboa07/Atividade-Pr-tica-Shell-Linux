#!/bin/bash
echo
SS=$(($3-1))
echo "Tempo Corrido: $1 hs $2 min $SS seg."
echo
echo -n "Deseja iniciar um novo cronômetro? [S/N]: "
read RESP

if [ $RESP = "S" ]||[ $RESP = "s" ]
then
	./entrada.sh
else
	exit
fi
