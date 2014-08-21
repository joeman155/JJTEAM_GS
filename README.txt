Summary
-------
This is code for a Beaglebone Black Angstrom Linux install.


What it provides
-------
* Configuration items for Beaglebone Black to be an Access Point
  and provide IP's over this WiFi Link

* PHP web page files for GroundStation web pages

* PERL scripts to interogate the RFD900 modem and write results to
  various SQLITE tables.


Dependencies
-------
* Beaglebone Black installed with Angstrom Linux

* USB WiFi Dongle installed and running (Kernel Support)

* Lighttpd Web server

* SQLLite3 installed

* PHP working

* RTC DS-3232 installed and running (Kernel Support)

* RFD900 modem attached

* Install libnl-1.1 and HostAPD

Installation
-------
1. Ensure all dependencies are met.
Since this is a lot of work, an image has been made available:-

http://leederville.net/hab/resources/GS-BBB-20140821-01.img

(You will need to get this on to your BeagleBone Black by first booting up
with any Angstrom distribution off microSD....then connect to localnet work...then use 
a command like the following:-

ssh USERNAME@your.linux.machine 'dd if=/tmp/20140821/GS-BBB-20140821-01.img bs=1M' | dd of=/dev/mmcblk1 bs=1M 

)


2. Ensure RFD900 modem is attached to /dev/ttyO1 and has a speed of 57600

3. Create INIT Scripts to run 'startap'

4. Copy across web files

5. Create SQLITE3 tables using tables.sql

6. Configure IP of BBB with 192.168.11.65


Updates
---------
To get updates of the Groundstation scripts, run:-

./update_gs.sh
