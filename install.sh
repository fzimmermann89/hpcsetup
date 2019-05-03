#!/bin/bash
DEST=$HOME/local

TEXTPLACEHOLDER="/home/gorkhover/local/"
TEXTNEW="$DEST"
while read -r file ; do
    echo "Processing $file"
    sed -i -e 's#$TEXTPLACEHOLDER#$TEXTNEW#g' $file
done < <(grep -al "$TEXTPLACEHOLDER" -r local/ )

BINPLACEHOLDER="/home/gorkhover/////local/"
BINNEW="$DEST//////////////////////////////"
BINNEW=${BINNEW:0:26}
while read -r file ; do
    echo "Processing $file"
    sed -i -e 's#$BINPLACEHOLDER#$BINNEW#g' $file
done < <(grep -al "$BINPLACEHOLDER" -r local/ )

cp -rP local/* $DEST
cp -P .* $HOME
cp -rPp .oh-my-zsh $HOME
cp -r .proxychains $HOME
