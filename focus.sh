#!/bin/bash



device=$(ls -alF /dev/input/by-id/ | grep usb-Logitech_USB_Receiver-event-kbd | cut -d'/' -f2)

evemu-event /dev/input/${device} --type EV_KEY --code 29 --value 1 --sync
evemu-event /dev/input/${device} --type EV_KEY --code 97 --value 1 --sync
evemu-event /dev/input/${device} --type EV_KEY --code 97 --value 0 --sync
evemu-event /dev/input/${device} --type EV_KEY --code 29 --value 0 --sync
