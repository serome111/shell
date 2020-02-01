#! /bin/bash
clear
echo "#######################################################"
echo "## Encuentra el numero par mayor                     ##"
echo "## Digite 10 numeros para crear el vector de valores ##"
echo "## Tenga en cuenta que solo funcionara con Numeros   ##"
echo "## Ingresar valores no numericos daran error         ##"
echo "#######################################################"
echo " "
vector=();
posicion=();
mayor=0;
for i in `seq 1 10`; do 
	read -p 'Digite el '$i' numero: '   numero
	vector=("${vector[@]}" $numero)
done
clear
echo "#################################"
echo "# Encuentra el numero par mayor #"
echo "#################################"
echo " "

for((i=0; i <= ${#vector[@]}-1; i++));
do
	NumeroIngresado=${vector[$i]}
	let resto=$NumeroIngresado%2
	if [ $resto -eq 0 ]; then
		if [[ $NumeroIngresado -gt $mayor ]] #mayor que
		then
	 		mayor=$NumeroIngresado
	 		let posicion=$i+1
		fi
	fi
done
if [[ 0 -eq $mayor ]]
then
	echo "Los numeros contenidos en el vector de valores son"
	echo " "
	echo "---> "${vector[@]}" <---"
	echo " "
	echo "Dentro de los numeros ingresados ninguno es un numero par mayor que 0 "
	echo " "
	echo "Realizado por Sofia"
	exit 0
else
	echo "Los numeros contenidos en el vector de valores son"
	echo " "
	echo "---> "${vector[@]}" <---"
	echo " "
	echo "el numero par mayor es "$mayor " y esta en la posicion "$posicion
	echo " "
	echo "Realizado por Sofia con el <3"
	exit 0	
fi

#Pregunta a resolver
#leer 10 numeros enteros, 
#contenidos en un vector y 
#determinar en que posiciones se encuentra el numero par mayor leido

#Bibliografia
#https://ejerciciosshell.wordpress.com/2012/10/17/12/
#https://www.atareao.es/tutorial/scripts-en-bash/bucles-en-bash/
#https://e-mc2.net/es/bash-iv-estructuras-de-control-y-bucles
