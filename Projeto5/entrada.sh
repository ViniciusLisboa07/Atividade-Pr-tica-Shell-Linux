#!/bin/bash
clear
echo "Números aleatório gerados.." 
VETOR1=($(shuf -i 0-100 -n 14))
echo "${VETOR1[@]}"

./saida.sh "${VETOR1[@]}"
