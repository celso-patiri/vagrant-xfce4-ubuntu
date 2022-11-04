#!/bin/sh
sudo apt-get update

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install \
ninja-build \
gettext \
libtool \
libtool-bin \
autoconf \
automake \
cmake \
g++ \
pkg-config \
unzip \
doxygen \

git clone https://github.com/neovim/neovim /home/vagrant/neovim
cd /home/vagrant/neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
git checkout stable
sudo make install

sudo mkdir -p /home/vagrant/.local/share/nvim/site/pack/packer/start/

sudo chmod -R 777 /home/vagrant/.local/

sudo git clone https://github.com/wbthomason/packer.nvim.git --depth 1 /home/vagrant/.local/share/nvim/site/pack/packer/start/packer.nvim
