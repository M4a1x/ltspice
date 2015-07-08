#!/bin/bash
unset WINEPREFIX
if [ ! -d "$HOME"/.ltspice ] ; then
   mkdir -p "$HOME"/.ltspice
   touch "$HOME"/.ltspice/scad3.ini
fi
wine /opt/ltspice/scad3.exe -ini "$HOME"/.ltspice/scad3.ini "$@"
