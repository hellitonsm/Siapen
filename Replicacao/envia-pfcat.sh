#!/bin/sh
PATH=$PATH:/opt/firebird/bin
ISC_USER=SYSDBA
ISC_PASSWORD=masterkey
export PATH ISC_USER ISC_PASSWORD
contador=1
arquivo=envia-pfcat.sh
lista=`ps -C ${arquivo}`
lista=`echo ${lista#* ${arquivo}}`
executando=`echo ${lista}`
quantidade=`echo ${#executando}`
if [ $quantidade -lt 17 ]; then
while true ; do
      /opt/firebird/bin/isql -i /siap/database/pfcat-envia.sql
      contador=$(($contador+1))
      if [ $contador -gt 60 ]; then
        break
        exit 1
      fi
done
else
 echo "Ja esta executando este script: $quantidade comando: $executando"
fi
