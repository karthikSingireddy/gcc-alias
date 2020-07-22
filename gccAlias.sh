#!/bin/bash

if [ $# -lt 5 ] || [ $# -gt 5 ]; then
  echo "Usage: ./gccAlias <compileCommand> <runCommand> <compileAndRunCommand> <c file> <output file>"
  exit 1
fi

compileCommand=$1
runCommand=$2
compileAndRunCommand=$3
cFile=$4
outputFile=$5

alias ${compileCommand}="gcc -Wall -g -std=c11 -o ${outputFile} ${cFile}"
echo "alias ${compileCommand}=\"gcc -Wall -g -std=c11 -o ${outputFile} ${cFile}\""

alias ${runCommand}="./${outputFile}"
echo "alias ${runCommand}=\"./${outputFile}\""

alias ${compileAndRunCommand}="${compileCommand} && ${runCommand}"
echo "alias ${compileAndRunCommand}=\"${compileCommand} && ${runCommand}\""

exit 0
