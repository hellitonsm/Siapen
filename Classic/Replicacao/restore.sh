#!/bin/sh
PATH=$PATH:/opt/firebird/bin
ISC_USER=SYSDBA
ISC_PASSWORD='!d@e#p$1'
export PATH ISC_USER ISC_PASSWORD

if [ "$1" != "" -a "$2" != "" ] ; then  
   FILEBKP=$1
   DBFILE=$2
   gbak -c -p 16384 -v -r -FIX_FSS_METADATA WIN1252 $FILEBKP $DBFILE
else
   echo "Paramentro informado invalido:"
   echo "Use sh restore.sh BackupFile DatabaseFile"
fi

