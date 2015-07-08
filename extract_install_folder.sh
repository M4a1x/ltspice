#!/bin/sh

if [ -z "$1" ]
  then
    echo "No argument supplied. First argument must be LTspiceIV.exe installation file"
    exit -1
fi

install -m755 -d "$PWD"/tmp "$PWD"/tmp/env "$PWD"/tmp/local
export WINEPREFIX="$PWD"/tmp/env
export XDG_DATA_HOME="$PWD"/tmp/local
wine "$PWD"/"$1"

mv tmp/env/drive_c/Program\ Files\ \(x86\)/LTC/LTspiceIV .
rm -rf tmp

exit 0
