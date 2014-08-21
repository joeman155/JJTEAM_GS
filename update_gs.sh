#!/bin/sh
## Name:    install_scripts.sh
## Author:  Joseph Turner
## Purpose: Installs scripts


# CONFIGURATION
dl_url="http://leederville.net/hab/resources/jjteam_gs.tar.gz"


# -- END OF CONFIGURATION -- #

echo Downloading latest version of scripts...
wget "${dl_url}"

echo Extracting latest version
tar zxvf jjteam_gs.tar.gz



# Copy web files
echo Copying web files...
cp -pr jjteam_gs/web/* /www/pages/

echo

# Copy Scripts
echo Copying scripts...
cp jjteam_gs/air_data.txt .
cp jjteam_gs/backup.sh .
cp -pr jjteam_gs/etc .
cp jjteam_gs/groundStation.pl .
cp jjteam_gs/gs.sh .
cp jjteam_gs/load_message.pl .
cp jjteam_gs/remove_all_messages.pl .
cp jjteam_gs/startap.sh .
cp jjteam_gs/tables.sql .

echo

# Restarting groundStation app
echo Stopping Ground Station...
./gs.sh stop

echo
echo Starting Ground Station...
./gs.sh start

echo
echo
echo Finished!
echo
echo Read README.txt for any non-standard steps that need to be performed.
