#!/bin/bash
clear
SS=0
MM=0
HH=0

echo "--CRONÔMETRO--"
echo "E - INICIAR"
echo "S - SAIR"
echo "Obs: Digite F a qualquer momento para finalizar o cronômetro!"
echo
echo -n "Resposta: "
read EX
echo
if [ $EX = "E" ]||[ $EX = "e" ] 
then

while (sleep 1)
do

	if [ $SS -gt 59 ]
	then
		SS=0
		MM=$(echo "$MM + 1" | bc)
	fi
	if [ $MM -gt 59 ]
	then
		MM=0
		HH=$(echo "$HH +1" | bc)
	fi
	if [ $HH -gt 23 ]
	then
		MM=0
		HH=0
		HH=0
	fi
echo -n -e "\rContando... $HH:$MM:$SS "
SS=$(echo "$SS+1" | bc)
read -n1 -t 1 FINALIZAR

case "$FINALIZAR" in
f) echo
	./saida.sh $HH $MM $SS
	exit
	;;
F) echo
	./saida.sh $HH $MM $SS
	 exit
	;;
	esac

done

elif [ $EX = "S" ]||[ $EX = "s" ]
then
	exit
else
		./entrada.sh
fi
