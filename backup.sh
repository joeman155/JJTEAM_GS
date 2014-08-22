#!/bin/sh
echo This should be run when BBB is booted from microSD card.
echo Hit Enter to continue...
echo

read a
dd=`date +%d%b%y`
dd if=/dev/mmcblk1 bs=1M | ssh 192.168.10.122 'dd of=/tmp/habgs-${dd}.img bs=1M'
