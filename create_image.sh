#!/bin/bash
set -e
sudo apt install -y live-build
mkdir image
cd image

lb config --distribution  bookworm  --archive-areas "main contrib non-free non-free-firmware"

cat <<EOF > config/package-lists/live.list.chroot
live-boot
live-config
live-config-systemd
systemd-sysv
wpasupplicant
nwipe
dmidecode
tpm2-tools
smartmontools
hdparm
nvme-cli
firmware-linux-nonfree
firmware-realtek
firmware-iwlwifi
firmware-ipw2x00
fwupd
network-manager
ntpdate
ntp
bash
mawk
grep
hdparm
util-linux
udev
coreutils
EOF

sudo lb build