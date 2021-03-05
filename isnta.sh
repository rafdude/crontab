#!/bin/bash

PATH=/home/torrent/.local/bin:/home/torrent/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

echo '==============================================================================================='
figlet -f digital Started $(date)
echo '==============================================================================================='
echo 

## mm/dd/yyyy and time###
## Time in 12 hr format ###

## now=$(date +'%m/%d/%Y @ %r')

## Log message to syslog

## echo   "Instragram script run @ {$now}" 

echo "Step 8: Installing / Updating Instaloader"
pip3 install instaloader
pip3 install --upgrade instaloader

echo
pip3 install instaloader


/home/torrent/.local/bin/instaloader -l robert.stack.50951 -p tL382xZoPoj8sB --no-metadata-json -C -F --dirname-pattern=/home/torrent/insta/files/{profile}  profile julies_lashes bella.poarch


echo '==============================================================================================='
figlet -f digital Ended $(date)
echo '==============================================================================================='
echo 
