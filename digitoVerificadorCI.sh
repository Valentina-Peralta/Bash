#!/bin/bash
 
calcularDigito() {
    cedula=$1
    vector=8123476
    total=0
    for (( i = 0; i < ${#cedula}; i++ ))
    do
        digit=${cedula:i:1}
        total=$(( total + digit*${vector:i:1} ))
    done
    modulo=$(( total % 10 ))
    echo "El dígito verificador es: $modulo"
}
 
read -p "Ingresa los primeros 7 dígitos de la cédula: " cedula
if [[ ! $cedula =~ ^[0-9]{7}$ ]]; then
    echo "La cédula ingresada tiene un número de digitos invalido. Debe ingresar la cédula sin dígito verificador (7 dígitos)"
else
    calcularDigito $cedula
fi