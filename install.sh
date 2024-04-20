#! /usr/bin/env bash
echo "Updating..."
apt update
apt upgrade

echo "Update finished"

echo "Installing required packages for neovim"
apt install make cmake gettext unzip

echo "Installing Neovim"
git clone https://github.com/neovim/neovim.git
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE-RelWithDebInfo
make install

apt update
apt upgrade
