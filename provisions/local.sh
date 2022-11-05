#!/bin/sh
sudo apt-get update

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install \
stow \
awesome \
tmux \
zsh \
polybar \
xdotool \
xclip \
feh \
rofi \
bat \
ripgrep \
fd-find \

# tmux tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# symlinks
sudo mkdir -p ~/.local/bin
sudo ln -s /usr/bin/batcat ~/.local/bin/bat
sudo ln -s /usr/bin/fdfind ~/.local/bin/fd

# diff-so-fancy
sudo add-apt-repository ppa:aos1/diff-so-fancy
sudo apt update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install diff-so-fancy

git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global interactive.diffFilter "diff-so-fancy --patch"

# starship
curl -sS https://starship.rs/install.sh | sh -s -- -y

# zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions


