#!/bin/sh


# echo APD wait a few seconds for the USB to be ready
sleep 15

# Initialise the ADC
echo cape-bone-iio > /sys/devices/bone_capemgr.8/slots


echo Set date and time
echo ds3232 0x68 > /sys/class/i2c-adapter/i2c-1/new_device
sleep 1
modprobe rtc-ds3232
sleep 1
hwclock -s -f /dev/rtc1
sleep 1
hwclock -w
sleep 1

date

# echo APD ifconfig
ifconfig wlan0 inet 192.168.11.65 up

# echo APD starting dhcp server
nohup udhcpd  -f -S /etc/udhcpd.conf.wlan &

# echo APD start wifi AP
nohup hostapd /home/root/hope/etc/hostapd.conf &


echo Starting groundstation...
/home/root/hope/groundStation.pl > /home/root/hope/groundStation.log 2>&1 
