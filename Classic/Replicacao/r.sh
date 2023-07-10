#!/bin/sh
PATH=$PATH:/opt/firebird/bin
ISC_USER=SYSDBA
ISC_PASSWORD=masterkey
export PATH ISC_USER ISC_PASSWORD
contador=1
arquivo=$1
lista=`ps -C ${arquivo}`
lista=`echo ${lista#* ${arquivo}}`
#executando=`echo ${lista% ${arquivo}*}`
executando=`echo ${lista}`
quantidade=`echo ${#executando}`
echo $executando
teste=`./${arquivo}`
echo teste
if [ $quantidade -lt 17 ] ; then

echo "valor if $quantidade"

else
echo "valor else  $quantidade"


fi
