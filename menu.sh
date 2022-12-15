#!/bin/bash


echo "¿Qué herramienta quiere utilizar?"
PS3='Elija >> '
select ejercicio in "statsWords" "statsUsageWords" "findNames" "statsSentence" "blankLinesCounter" "SALIR"
do
	case $ejercicio in
		statsWords)
			source ./statsWords.sh
			;;
		statsUsageWords)
			source ./statsUsageWords.sh
			;;
		findNames)
			source ./findNames.sh
			;;
		statsSentence)
			source ./statsSentence.sh
			;;
		blankLinesCounter)
			source ./blankLinesCounter.sh
			;;
		SALIR)
			break
			;;
		*)
			echo "$REPLY no es una opción válida."
			;;
	esac
done
