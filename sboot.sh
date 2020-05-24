#!/bin/bash
# Silent boot configuration script v 0.1
# Updated on 24/05/2020

# Disable Message Of The Day
touch ~/.hushlogin

# Remove pre-login message
rm /etc/issue

# Peform silent shutdown
echo -e "kernel.printk = 0 4 1 7"  > /etc/sysctl.d/10-console-messages.conf
