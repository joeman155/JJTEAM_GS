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
1. Ensure all hardward dependencies are met.

i.e. - Wiring up DS3232 RTC
     - Plugging in Tenda 311 USB stick
     - Attached RFD900 to the Beaglebone Black
     - Power Supply created and attached
     - Antenna attached to RFD900 modem

2. 
Since this is a lot of work, an image has been made available:-

http://leederville.net/hab/resources/GS-BBB-20140821-01.img.gz

(You will need to get this on to your BeagleBone Black by first booting up
with any Angstrom distribution off microSD....then connect to localnet work...then use 
a command like the following:-

ssh USERNAME@your.linux.machine 'dd if=/tmp/20140821/GS-BBB-20140821-01.img bs=1M' | dd of=/dev/mmcblk1 bs=1M 

Then remove microSD and reboot Beaglebone Black
)


3. Ensure RFD900 modem is attached to /dev/ttyO1 and has a speed of 57600

4. Log on as user root 

5. Clean out old DB and create fresh one
 cd hope
 rm hope.db
 sqlite3 hope.db < tables.sql

That should be it!


Updates
---------
To get updates of the Groundstation scripts:-

1. Ensure Ethernet cable is attached and Internet is available from Beaglebone Black

2. Run the following as user root:-

cd hope
./update_gs.sh
