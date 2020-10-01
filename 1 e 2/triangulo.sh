#!/bin/bash
echo -n "Digite o lado de um triângulo equilátero em cm: "
read LADO
RESULT=0
RESULT=$(echo "scale=2; ($LADO*$LADO)" | bc)
RESULT1=0
RESULT1=$(echo "scale=2; ($RESULT/4)" | bc)
RESULTFINAL=$(echo "scale=2; ($RESULT1*1.732)" | bc)
./imprime2.sh $RESULTFINAL
