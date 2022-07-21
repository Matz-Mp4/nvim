#!/bin/bash


git clone https://github.com/neovim/neovim.git ~/.config/nvim/neovim

sudo rm /usr/local/bin/nvim
sudo rm -r /usr/local/share/nvim/

cd ~/.config/nvim/neovim

make CMAKE_BUILD_TYPE=Release

sudo make install

rm -rf ~/.config/nvim/

git clone  https://github.com/Matz-Mp4/nvim  ~/.config
