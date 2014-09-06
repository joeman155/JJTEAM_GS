#!/bin/sh
## Name:    install_scripts.sh
## Author:  Joseph Turner
## Purpose: Installs scripts


# CONFIGURATION
dl_url="http://leederville.net/hab/resources/jjteam_gs.tar.gz"


# -- END OF CONFIGURATION -- #

echo Downloading latest version of scripts...
rm -f jjteam_gs.tar.gz
wget "${dl_url}"

echo Extracting latest version
tar zxvf jjteam_gs.tar.gz



# Copy web files
echo Copying web files...
cp -pr jjteam_gs/web/* /var/www/gs/

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

# Create other dirs
echo Creating directories...
# For upload of area where we can upload path prediction files
[ -d uploads ] || mkdir uploads
chmod 777 uploads

# Temp write area
[ -d run ] || mkdir run
chmod 777 run

# Images area
[ -d out ] || mkdir out
[ -d out/images ] || mkdir out/images
[ -d out/images/thumbnails ] || mkdir out/images/thumbnails
chmod 777 out/images/thumbnails

# Access to images from web interface
ln -sf /home/root/hope/out /var/www/gs/out 

# link to log...so it can be downloaded.
ln -sf /home/root/hope/groundStation.log /var/www/gs/groundStation.log

# Permissions so prediction path upload works
chmod 777 .
chmod 777 hope.db

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
echo Please execute following command 
echo 
echo "cp jjteam_gs/update_gs.sh ."
echo 
echo Read README.txt for any non-standard steps that need to be performed.
echo

