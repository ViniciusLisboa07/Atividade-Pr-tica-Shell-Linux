#!/bin/bash

VETOR1=($@)

VETOR2=$(echo ${VETOR1[*]} | tr ' ' '+' | bc -l)
VETOR2=($(echo ${VETOR1[*]} | tr " " "\n" | sort -n))

echo
echo "Valores retirados: "
echo "${VETOR2[0]}, ${VETOR2[1]}, ${VETOR2[12]}, ${VETOR2[13]}"

unset VETOR2[0] VETOR2[1] VETOR2[12] VETOR2[13]

echo
echo "Retirado os 2 menores e os 2 maiores valores..."
echo "${VETOR2[@]}"
echo


SOMAVETOR2=$(echo ${VETOR2[*]} | tr ' ' '+' | bc -l)
MEDIAVETOR2=$(echo "scale=2; $SOMAVETOR2/10" | bc)
MEDIASCASA2=$(echo "scale=0; $MEDIAVETOR2/1" | bc)

echo "Média dos 10 valores: $MEDIAVETOR2"
echo

echo -n "Números maiores que a média: "
for J in "${VETOR2[@]}"
do
    if [ "$J" -ge "$MEDIASCASA2" ]
    then
		echo -n "$J "
	fi	
done
echo
echo
echo -n "Números menores que a média: "
for I in "${VETOR2[@]}"
do
    if [ "$I" -le "$MEDIASCASA2" ]
    then
		echo -n "$I "
fi	
done
echo

SOMAVETOR1=$(echo ${VETOR1[*]} | tr ' ' '+' | bc -l)
MEDIAVETOR1=$(echo "scale=2; $SOMAVETOR1/14" | bc)
MEDIASCASA1=$(echo "scale=0; $MEDIAVETOR1/1" | bc)

echo

echo "Média dos 14 valores: $MEDIAVETOR1"
echo
R=$(echo "$MEDIAVETOR1 > $MEDIAVETOR2" | bc)
if [ $R = 1 ]
then
	DIFERENCAVETOR=$(echo "scale=2; $MEDIAVETOR1-$MEDIAVETOR2" | bc)
	printf "Diferença das médias: %d"$DIFERENCAVETOR
else
	DIFERENCAVETOR=$(echo "scale=2; $MEDIAVETOR2-$MEDIAVETOR1" | bc)
	printf "Diferença das médias: %d"$DIFERENCAVETOR
fi
echo

