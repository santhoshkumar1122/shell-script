#!/bin/bash

NAME=""
WISHES=""

USAGE(){
    echo "USAGE:: $(basename $0) -n <name> -w <wishes"
    echo "Options::"
    echo " -n, Specify the name (mandatory)"
    echo " -w, Specify the wishes, ex, Good Morning"
    echo " -h, Display the help and exit"
}

while getopts ":n:w:h" opt; do
    case $opt in
        n) NAME="$OPTORG";;
        w) WISHES="$OPTARG";;
        \?) echo "invalid options: -"$OPTARG"" >&2; USAGE; exit;;
        :) USAGE; exit;;
        h) USAGE; exit ;;
    esac

done

if [ -z "$NAME" ] || [ -z "$WISHES" ]
     echo "ERROR: both -n and -w are mandatory options."
     USAGE
     exit 1

fi

echo "Hello $NAME. $WISHES. I have been learning shell-script"

