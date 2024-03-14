## Initialization Probable Requirement
  1. Git Initialization
  2. lazyvim & Hyprdots installation
  3. OpenMC & PythonEnv Requirement
  4. Stowing

## Git Initialization
Install xorg-xinit xorg firefox to add the generated ssh key 
using the command below :
```
 $ ssh-keygen -t rsa -b 4096 -C "demonlordx777@gmail.com" 
 $ git config --global user.email "demonlordx777@gmail.com"
 $ git config --global user.name "DMelisena"
```
the file will be on ~/.ssh
open https://github.com/settings/keys 
add the key from ~/.ssh/id_rsa.pub

## lazyvim and hyprdots installation
```
$ git clone https://github.com/LazyVim/starter ~/.config/nvim
$ pacman -Sy git lazyvim
$ rm -rf ~/.config/nvim/.git

$ git clone --depth 1 https://github.com/dmelisena/hyprdots ~/Hyprdots
$ cd ~/Hyprdots/Scripts && ./install.sh
```
## install stow and git
source https://youtu.be/y6XCebnB9gs?si=Ihbl66OUaDZfM8ZB
```
$ sudo pacman -S stow git
```
clone the repo
```
$ git clone git@github.com/DMelisena/dotfiles.git
```
use stow for symlinks on the dotfiles
```
$ stow .
```
check using ls -lah <insert directory
for example :
```
cd $HOME $$ ls -lah .config/neofetch
```
## Adding file to stow
move the file to dotfiles directory with $HOME = dotfiles equivalent
for example : $HOME/.config/neofetch would be on the dotfiles/.config/neofetch
