#!/bin/bash
echo -n "Digite o lado do quadrado em cm: "
read LADO
AREA=0
AREA=$(echo "scale=2; ($LADO*$LADO)" | bc)
./imprime2.sh $AREA
