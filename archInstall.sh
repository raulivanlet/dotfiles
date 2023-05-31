#!/bin/bash

ln -sf /usr/share/zoneinfo/Europe/Bucharest /etc/localtime
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen