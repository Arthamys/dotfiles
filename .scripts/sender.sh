#!/bin/sh

# Script permettant d'envoyer des données par nc

DIR_NAME="packet"
ARGV=( "$@" )

if [ $# -lt 3 ]
then
  echo "Usage : $0 ip_address port files_to_send ..."
  exit 42
fi

mkdir -p "/tmp/$DIR_NAME"

ARGV=("${ARGV[@]:2}")
for item in $ARGV
do
  echo $item
  cp -rf $item "/tmp/$DIR_NAME"
done

cd /tmp
tar -cvf "$DIR_NAME".tar "$DIR_NAME"
echo -n "md5sum: "
md5sum "$DIR_NAME".tar
nc "$1" "$2" < "$DIR_NAME".tar

rm -rf "$DIR_NAME" "$DIR_NAME".tar
