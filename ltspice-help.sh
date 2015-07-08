#!/bin/bash
#export WINEPREFIX="$HOME"/.ltspice/wine
#if [ ! -d "$HOME"/.ltspice ] ; then
#   mkdir -p "$HOME"/.ltspice/wine
#   wineboot -u
#   
#   touch "$HOME"/.ltspice/scad3.ini
#fi
#WINEDEBUG=-all wine /opt/LTspiceIV/scad3.exe -ini scad3.ini "$@"

wine /opt/LTspiceIV/LTspiceHelp.chm "$@"
