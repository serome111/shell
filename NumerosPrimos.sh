#! /bin/bash
clear
echo "------>Numero con mas cantidad de digitos primos! <------"

x=0
vector=();
posicion=();
for i in `seq 1 3`; do 
	read -p 'Digite el '$i' numero: '   variable_de_entrada
	vector=("${vector[@]}" $variable_de_entrada)
done
clear
echo "------>Numero con mas cantidad de digitos primos! <------"
echo " "
contador_primos=0
numero_ingresado=(0);
for((i=0; i <= ${#vector[@]}; i++));
do
	primo=0
    for((j=0; j <= ${#vector[i]}; j++));
    do
    	x=${vector[i]:j};
        #echo ${vector[i]:j:1} "<--" ${vector[i]}
		if [[ $x == *2* ]] #va preguntar si en el valor de $x se encuentra el valor dentro de **
		then
	 		let primo+=1
		fi

		if [[ $x == *3* ]]
		then
	 		let primo+=1
		fi

		if [[ $x == *5* ]]
		then
	 		let primo+=1
		fi

		if [[ $x == *7* ]]
		then
	 		let primo+=1
		fi
    done
    #vector=("${vector[@]}" $variable_de_entrada)
             #x mayor que y
    if [[ $primo -gt $contador_primos ]] #ge si la cantidad de primos del numero evaluado es mayor al que se tiene
		then
			unset numero_ingresado[@] #elimina todos los valores del arreglo
			unset posicion[@]
			numero_ingresado=("${numero_ingresado[@]}" ${vector[i]})
	 		contador_primos=$primo
	 		posicion=("${posicion[@]}" $i)
	 	else
	 		if [[ $primo -eq $contador_primos ]] #ge
			then
				numero_ingresado=("${numero_ingresado[@]}" ${vector[i]})
		 		contador_primos=$primo
				posicion=("${posicion[@]}" $i)
			fi
	fi
done

if [[ ${#numero_ingresado[@]} -eq 1 ]] 
	then
		# clear
		echo "el vector de valores es"
		echo " "
		echo "---> "${vector[@]}" <---"
		echo " "
		echo "el numero "${numero_ingresado[@]} " es el que tiene mayor cantidad de digitos primos y esta en la posicion "${posicion[@]}
		echo " "
		echo "Tenga en cuenta que las posiciones van de 0 en adelante"
		echo " "
		exit 0	
	else
		echo "el vector de valores es"
		echo " "
		echo "---> "${vector[@]}" <---"
		echo " "
		echo "los numeros "${numero_ingresado[@]} " son los que tienen la mayor cantidad de digitos primos y estan en la posicion "${posicion[@]}
		echo " "
		echo "Tenga en cuenta que las posiciones van de 0 en adelante"
		echo " "
		exit 0
	fi
#Pregunta a resolver
#leer 10 numeros enteros, 
#contenidos en un vector y 
#determinar en que posiciones se encuentra el numero con mayor cantidad de digitos primos

#Bibliografia

# x -lt y	x menor que y
# x -le y	x menor o igual que y
# x -eq y	x igual que y
# x -ge y	x mayor o igual que y
# x -gt y	x mayor que y
# x -ne y	x no igual que y

#Fuente: https://www.enmimaquinafunciona.com/pregunta/79229/linux-shell-wc---c-contar-caracteres--1
#https://www.reiser.cl/bash-manejo-de-cadenas-de-texto/
#https://uniwebsidad.com/foro/pregunta/287/como-comprobar-si-una-variable-de-bash-contiene-una-determinada-cadena-de-texto/
#https://gulvi.com/serie/curso-programacion-bash/capitulo/bucles-for-bash
#https://e-mc2.net/es/bash-iv-estructuras-de-control-y-bucles
#https://www.lawebdelprogramador.com/codigo/Linux-Unix-Shell-Scripting/2807-Determinar-si-un-numero-es-primo-en-bash.html