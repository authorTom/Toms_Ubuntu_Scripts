#!/bin/bash
# Autologin configuration script v 0.1
# Updated on 24/05/2020

# Peform autologin on boot

var1="[Service]"
var2="ExecStart="
var3="ExecStart=-/sbin/agetty --noissue --autologin USERNAME %I $TERM"
var4="Type=idle"

mkdir -p /etc/systemd/system/getty@tty1.service.d
echo -e "$var1\n$var2\n$var3\n$var4"  > /etc/systemd/system/getty@tty1.service.d/override.conf
