#!/bin/bash
set -e
sudo apt install -y live-build
cd image

lb config --distribution  bookworm  --archive-areas "main contrib non-free non-free-firmware"
sudo lb build
