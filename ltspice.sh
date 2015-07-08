#!/bin/bash
unset WINEPREFIX
if [ ! -d "$HOME"/.ltspice ] ; then
   mkdir -p "$HOME"/.ltspice
   wineboot -u
   
   touch "$HOME"/.ltspice/scad3.ini
fi
WINEDEBUG=-all wine /opt/LTspiceIV/scad3.exe -ini scad3.ini "$@"
