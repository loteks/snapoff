#!/bin/bash

# Remove snaps from ubuntu 22.04 and install mozilla ppa

[ "$EUID" -ne 0 ] && echo "Must be root" && exit 1

snap remove firefox && apt purge snapd -y && \
echo -e 'Package: snapd\nPin: origin *\nPin-Priority: -1' | sudo tee /etc/apt/preferences.d/no_snapd  && \
add-apt-repository ppa:mozillateam/ppa -y && \

cat << EOF > /etc/apt/preferences.d/mozillateamppa
Package: firefox*
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 501
EOF

apt update && apt autoremove -y && apt install firefox -y

echo -e '\n----- Welcome back to snap free ubuntu! -----\n'

exit 0
