#!/bin/sh

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

sudo apt-get update

# alacritty dependencies
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install \
libfreetype6-dev \
libfontconfig1-dev \
libxcb-xfixes0-dev \
libxkbcommon-dev \
python3

~/.cargo/bin/cargo install alacritty
