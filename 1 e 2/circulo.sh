#!/bin/bash
echo -n "Digite o raio do circulo: "
read AREA
CAL=0
CAL=$(echo "scale=2; ($AREA*$AREA)" | bc)
CALFINAL=0
CALFINAL=$(echo "scale=2; ($CAL*3.14)" | bc)
./imprime2.sh $CALFINAL
