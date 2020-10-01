#!/bin/bash
clear
echo "-----JOGO BLACKJACK------"
echo -n "Quantos jogadores deseja: "
read JOGADORES

while [ $JOGADORES -lt 2 ]||[ $JOGADORES -gt 5 ]
	do

		echo "ERRO: Escolha entre 2 a 5 jogadores!"
		echo
		echo -n "Quantos jogadores deseja: "
		read JOGADORES
		echo
done

for ((I=1;I<=$JOGADORES-1;I++));
do
echo "===================================================================="
echo
echo "JOGADOR $I"
echo "Gerando carta..."
sleep 2
CARTAS1=($(shuf -i 1-13 -n 2))
CARTA2=${CARTAS1[0]}
CARTA3=${CARTAS1[1]}
SOMA2=$(($CARTA2+$CARTA3))
VENCEDOR=0
echo "Voçe recebeu a carta: $CARTA2 e a carta: $CARTA3 a soma deu: $SOMA2"

while :
do

	if [ $SOMA2 -gt 21 ]
	then
		echo "VOÇE PERDEU, SUA SOMA PASSOU 21 :("
		break
	elif [ $SOMA2 -eq 21 ]
	then
		echo "VOÇE VENCEU :)"
		VENCEDOR=$(($VENCEDOR+1))
		break
	else
		echo
		echo -n "Você deseja receber mais uma carta? [S/N]: "
		read RESPOSTA
		if [ "$RESPOSTA" = "S" ]||[ "$RESPOSTA" = "s" ]
		then
			echo "Gerando carta..."
			sleep 2
			CARTAS1=($(shuf -i 1-13 -n 2))
			CARTA1=${CARTAS1[0]}
			SOMA2=$(($CARTA1+$SOMA2))
			echo "Sua nova carta é $CARTA1 e sua nova soma é $SOMA2"
		else
			echo "Voçe ficou com $SOMA2"
			echo "Você não receberá mais cartas"
			break
		fi
	fi
	done
done
if [ $VENCEDOR -eq 0 ]
then
	echo
	CARTAS=($(shuf -i 1-13 -n 2))
	CARTA1=${CARTAS[0]}
	CARTA2=${CARTAS[1]}
	SOMA=$(($CARTA1+$CARTA2))
	echo "===================================================================="
	echo
	echo "JOGADOR NPC"
	echo echo "Voçe recebeu a carta: $CARTA1 e a carta: $CARTA2 a soma deu: $SOMA"
	if [ $SOMA -gt 21 ]
	then
	        echo "VOÇE PERDEU PASSOU DE 21 PONTOS :("
	elif [ $SOMA2 -eq 21 ]
		then
			echo "VOÇE VENCEU :)"
	else
		while :
		do
			RANDOM=($(shuf -i 0-1 -n 1))
        		if [ $RANDOM -eq 0 ]
        		then
        			NOVACARTA=($(shuf -i 1-13 -n 1))
        			SOMA=$(($SOMA+$NOVACARTA))
	       			echo "Gerando carta.."
        			sleep 2
        			echo "O CPU RECEBEU UM NOVA CARTA $NOVACARTA FICOU COM: $SOMA"

	        	else
        			echo "O CPU não receberá mais cartas..."
				break
        		fi
     			if [ $SOMA -gt 21 ]
      			then
               			echo "VOÇE PERDEU PASSOU DE 21 PONTOS"
				break

        		elif [ $SOMA -eq 21 ]
			then
				echo "VOÇE VENCEU :)"
				break
       			fi
		done
	fi
fi
