#!/bin/bash
clear
echo "--MENU--"
echo "1 - Cálculo Aritmético"
echo "2 - Cálculo Geométrico"
echo "3 - SAIR"
echo
echo -n "Qual operação deseja fazer? "
read OPCAO

if [ $OPCAO -eq 3 ]
then
	exit
fi

while [ $OPCAO -lt 1 ]||[ $OPCAO -gt 3 ]
	do
		echo
		echo "ERRO: Digite uma opção valida!"
		echo
		echo -n "Digite a opção: "
		read OPCAO
		
	done

echo
case $OPCAO in
1)
	echo "Cálculo Aritmético"
	echo "1 - Adição"
	echo "2 - Subtração"
	echo "3 - Divisão"
	echo "4 - Multiplicação"
	echo "5 - SAIR"
	echo
	echo -n "Qual operação deseja fazer? "
	read OPCAO
	if [ $OPCAO -eq 5 ]
	then
		exit
	fi
	while [ $OPCAO -lt 1 ]||[ $OPCAO -gt 5 ]
	do
		echo
		echo "ERRO: Digite uma opção valida!"
		echo
		echo -n "Digite a opção: "
		read OPCAO
		
	done
	echo
	echo -n "Digite o primeiro valor: "
	read VALOR1
	echo
	echo -n "Digite o segundo valor: "
	read VALOR2

	case $OPCAO in
		1) ./adicao.sh $VALOR1 $VALOR2;;
		2) ./subtracao.sh $VALOR1 $VALOR2;;
		3) ./divisao.sh $VALOR1 $VALOR2;;
		4) ./multiplicacao.sh $VALOR1 $VALOR2;;
	esac
	;;
2)
	
	echo "Cálculo Geométrico"
	echo "1 - Quadrado"
	echo "2 - Triângulo"
	echo "3 - Circulo"
	echo "4 - SAIR"
	echo
	echo -n "Digite a opção: "
	read OPCAO
	echo
	if [ $OPCAO -eq 4 ]
	then
		exit
	fi

	while [ $OPCAO -lt 1 ]||[ $OPCAO -gt 4 ]
	do
		
		echo "ERRO: Digite uma opção valida!"
		echo
		echo -n "Digite a opção: "
		read OPCAO
		echo
	done
	case $OPCAO in
		1) ./quadrado.sh;;
		2) ./triangulo.sh;;
		3) ./circulo.sh;;
	esac
	;;
esac
echo
