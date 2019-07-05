#!/bin/sh

TMPDIR=/tmp/ltspice
CURRDIR=$PWD
OUTDIR=$CURRDIR/ltspice-installation
WINEDIR=$TMPDIR/env
DATADIR=$TMPDIR/local
EXECUTABLE=LTspiceXVII.exe

echo "Creating tmp directories in $TMPDIR"
install -m755 -d $TMPDIR $WINEDIR $DATADIR
cd $TMPDIR

echo "Getting installation file from the website..."
echo "---------------------------------------------"
wget "http://ltspice.analog.com/software/LTspiceXVII.exe"

if [ $? -ne 0 ]; then
    echo "Error fetching file."
    rm -rf $TMPDIR
    exit -1
fi

echo "Setting environment variables..."
export WINEPREFIX=$WINEDIR
export XDG_DATA_HOME=$DATADIR

echo "Starting Installation..."
echo "Please accept the Terms & Conditions, select 'both x86 & x64' and install to default location"
echo "---------------------------------------------------------------------------------------------"
wine LTspiceXVII.exe

echo "Extracting the relevant files..."
install -m755 -d $OUTDIR
mv $WINEDIR/drive_c/Program\ Files/LTC/LTspiceXVII/* $OUTDIR

echo "Cleaning up $TMPDIR..."
rm -rf $TMPDIR

exit 0
