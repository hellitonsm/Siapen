#/bin/sh
PATH=$PATH:/opt/firebird/bin
ISC_USER=SYSDBA
ISC_PASSWORD='!d@e#p$1'
#ISC_PASSWORD=4b6f419409a2f885c33814c34bbbd37d
export PATH ISC_USER ISC_PASSWORD

if [ "$1" != "" -a "$2" != "" ] ; then
   DBFILE=$1
   FILEBKP=$2
   if [ "$3" != "-f" ] ; then
      #Backup Banco
      echo "Backup normal do banco $1"
      gbak -backup -v $DBFILE $FILEBKP
   else
      # backup Forcado
      echo "Backup Forcado do Banco $1"
      gbak -backup -v -ignore -garbage -limbo $DBFILE $FILEBKP
   fi
else
   sleep 3
   echo "Paramentro informado invalido:"
   echo "Use sh backup.sh DatabaseFile BackupFile [-f backup forcado]"
fi

