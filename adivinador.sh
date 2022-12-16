echo "---ADIVINA EL NUMERO---"

aleatorio=$(( $RANDOM % 50 + 1 ))

intento=1
 
echo "Ingrese su Nombre: "
read nombre

echo " ¿cual crees que es el numero?:"
read numero

while [ "$numero" -ne "$aleatorio" ] && [ "$intento" -le "10" ];
do

if [ "$numero" -lt "$aleatorio" ]; then intento=$(( $intento+1 ))
echo "El numero que buscas es mayor"
elif [ "$numero" -gt "$aleatorio" ]; then intento=$(( $intento+1 ))
echo "El numero que buscas es menor"
else
 "ganaste"
fi

echo "¿cual crees que es el numero?"
read numero

done

if [ "$intento" -lt "6" ]; then
echo "FELICIDADES $nombre, adivinaste antes de los primeros 5 intentos"
elif [ "$intento" -le "10" ]; then
echo "bien ahi $nombre, adivinaste antes de los primeros 10 intentos"
else 
echo "PERDISTE, en un juego tan facil"
echo "el numero era el $aleatorio"
fi
