## Initialization Probable Requirement
  1. Git Initialization
  2. lazyvim & Hyprdots installation
  3. OpenMC & PythonEnv Requirement
  4. Stowing

## TODO:  
  1. Add (S-x) as wlogout command
  2. Keyboard light Function 
  3. Install japanese keyboard and yomitan
  4. Find a way to replace the C-w </> to change window size on nvim

## Git Initialization
Install xorg-xinit xorg firefox to add the generated ssh key 
using the command below :
```
ssh-keygen -t rsa -b 4096 -C "demonlordx777@gmail.com" 
git config --global user.email "demonlordx777@gmail.com"
git config --global user.name "DMelisena"
```
the file will be on ~/.ssh
open https://github.com/settings/keys 
add the key from ~/.ssh/id_rsa.pub

## lazyvim and hyprdots installation
```
git clone https://github.com/LazyVim/starter ~/.config/nvim
pacman -Sy git lazyvim
rm -rf ~/.config/nvim/.git

git clone --depth 1 https://github.com/dmelisena/hyprdots ~/Hyprdots
cd ~/Hyprdots/Scripts && ./install.sh
```
##Updating Hyprdots
```
cd ~/hyprdots/Scripts
git pull
./install.sh -r
```
## install stow
source https://youtu.be/y6XCebnB9gs?si=Ihbl66OUaDZfM8ZB
```
sudo pacman -S stow
```
clone the repo
```
git clone git@github.com/DMelisena/dotfiles.git
```
use stow for symlinks on the dotfiles
note : sometimes sudo is needed or refresh the terminal when seeing symlink condition on ranger
```
stow .
```
check using ls -lah <insert directory
for example :
```
cd $HOME $$ ls -lah .config/neofetch
```
## Adding file to stow
move the file to dotfiles directory with ($HOME = ../dotfiles) equivalent
for example : $HOME/.config/neofetch would be on the ../dotfiles/.config/neofetch

## Setting up JP Keyboard
1. Required packages : 
```
sudo pacman -S fcitx5 fcitx5-qt fcitx5-gtk fcitx5-mozc fcitx5-configtool
```
2. Open fcitx5-configtool and add mozc as input method
3. Automatically initiate fcitx5 by adding it to hypr config

```
exec-once = fcitx5
```

Update archlinux mirror

```
sudo pacman -S reflector & sudo reflector --latest 20 --sort rate --save /etc/pacman.d/mirrorlist
```

## Connecting to Server:
1. create pass.txt on /dotfiles/ssh and enter a certain institution mail.
the first line is the email withouth @ and beyond
the second line is your password

2. turn on the vpn using this command
```
bash vpn.sh
```
3. then use this command to connect to the server
```
sshpass -p "password" ssh -o StrictHostKeyChecking=no serverUsername@10.46.10.1xx
```
replace the xx with computer 
replace the serverUsername and Password with the appropriate one


## Important links :
https://docs.python.org/3/library/venv.html
read how venvs works to load the venv

checking openmc's versions :
source the python venv, then :
```
python -c "import openmc; print(openmc.__version__)"
```
sometimes pulseaudio in my system is being shitty (I think it's me problem) but if no microphone input is found. Try this:
```
rm -rf .config/pulse/
```
To use notepad, authorize using this bash code on the hypr directory
```
chmod +x ifnotnote.sh 
```
