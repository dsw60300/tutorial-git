#!/bin/bash

case $1 in

--date|-d)
    echo "Dzisiejsza data:"
    date
    ;;

--logs|-l)

    count=${2:-100}

    mkdir -p logs

    for ((i=1;i<=count;i++))
    do
        filename="logs/log$i.txt"

        echo "Nazwa pliku: log$i.txt" > $filename
        echo "Skrypt: skrypt.sh" >> $filename
        echo "Data utworzenia: $(date)" >> $filename
    done

    echo "Utworzono $count plików log."
    ;;

--error|-e)

    count=${2:-100}

    mkdir -p errorx

    for ((i=1;i<=count;i++))
    do
        touch errorx/error$i.txt
    done

    echo "Utworzono $count plików error."
    ;;

--init)

    git clone . cloned_repo

    export PATH=$PATH:$(pwd)

    echo "Repozytorium sklonowane do cloned_repo"
    echo "PATH ustawiony"
    ;;

--help|-h)

    echo "Dostępne opcje:"
    echo "--date      lub -d"
    echo "--logs N    lub -l N"
    echo "--error N   lub -e N"
    echo "--init"
    echo "--help      lub -h"
    ;;

*)

    echo "Nieznana opcja. Użyj --help"

    ;;

esac
