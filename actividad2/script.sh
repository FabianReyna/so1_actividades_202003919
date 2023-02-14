#!/bin/bash
echo "Ingrese su usuario de github"
#variable usuario github
read GITHUB_USER

#id
IDENTIFICADOR=$(curl -s "https://api.github.com/users/${GITHUB_USER}" | jq -r '.id')

#fecha creacion
FECHA_CREACION=$(curl -s "https://api.github.com/users/${GITHUB_USER}" | jq -r '.created_at')
#impresion mensaje
MENSAJE="Hola ${GITHUB_USER}. User ID: ${IDENTIFICADOR}. Cuenta creada el: ${FECHA_CREACION}"
echo $MENSAJE

#fecha actual
FECHA_ACTUAL=`date +"%d-%m-%Y"`

#creacion carpetas
mkdir -p ./tmp/$FECHA_ACTUAL

#creacion de log
echo $MENSAJE>./tmp/$FECHA_ACTUAL/saludo.log