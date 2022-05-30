#/bin/sh 

sudo pacman-mirrors -c China
sudo pacman -S alacritty rofi zsh tmux polybar unzip

nvim  /etc/pacman.conf
sudo pacman -Syy
sudo pacman -S archlinux-keyring

sudo pacman -Syy
sudo pacmna -paru

paru -S vim
paru -S neovim

yay -S fcitx5-im
cp ./.pam_environment ~/
yay -S fcitx5-rime
yay -S rime-cloverpinyin
yay -S base-devel
mkdir ~/.local/share/fcitx5/rime/
cp ./default.custom.yaml ~/.local/share/fcitx5/rime/
yay -S fcitx5-pinyin-zhwiki-rime
yay -S fcitx5-material-color
yay -S nerd-fonts-jetbrains-mono
yay -S icalingua
yay -S wps-office wps-office-mui-zh-cn
yay -S yesplaymusic
yay -S typora
yay -S flameshot
yay -S timeshift
yay -S clash clash-for-windows-bin
yay -S neofetch
yay -S screenfetch
yay -S lolcat

yay -S zsh
cp ./.zshrc ~

sudo rm /usr/bin/terminal
sudo ln -s /usr/bin/alacritty /usr/bin/terminal

sudo unzip ./UbuntuMono.zip -d /usr/share/fonts/TTF

mkdir ~/.config/rofi
mkdir ~/.config/youtube-viewer
mkdir ~/.config/polybar

sh ./oh_my_zsh.sh

yay -S ranger
yay -S fzf

rm -r ~/.config/ranger
cp ./ranger ~/.config/

yay -S fzf

yay -Syu
yay -S picom-ibhagwan-git

sh ./copyout_file.sh
