FROM ubuntu
MAINTAINER Gabriel Soda

ADD ["blankLinesCounter.sh", "/blankLinesCounter.sh"]
ADD ["statsWords.sh", "/statsWords.sh"]
ADD ["statsUsageWords.sh", "/statsUsageWords.sh"]
ADD ["findNames.sh", "/findNames.sh"]
ADD ["statsSentences.sh", "/statsSentences.sh"]
ADD ["textoEjemplo.txt", "/textoEjemplo.txt"]
ADD ["menu.sh", "/menu.sh"]
