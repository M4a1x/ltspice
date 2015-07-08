#!/bin/sh

#if [ -z "$1" ]
#  then
#    echo "No argument supplied. First argument must be LTspiceIV.exe installation file"
#    exit -1
#fi
if [ ! -f LTspiceIV.exe ]; then
    echo "File not found locally. Trying to fetch from the website.."
    wget "http://ltspice.linear-tech.com/software/LTspiceIV.exe"

    if [ $? -ne 0 ]; then
        echo "Error fetching file."
        exit -1
    fi
fi

install -m755 -d tmp tmp/env tmp/local
export WINEPREFIX="$PWD"/tmp/env
export XDG_DATA_HOME="$PWD"/tmp/local
wine LTspiceIV.exe

mv tmp/env/drive_c/Program\ Files\ \(x86\)/LTC/LTspiceIV .
rm -rf tmp
rm LTspiceIV.exe

exit 0
