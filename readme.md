install stow and git
```
$ sudo pacman -S stow git
```
clone the repo
```
$ git clone git@github.com/DMelisena/dotfiles.git
```
use stow for symlinks on the dotfiles
```
$ cd dotfiles && stow .
```
check symlinks on home directory using
```
$ cd $HOME
```
use  ls -lah <insert file here>
for example :
```
$ ls -lah .config/neofetch
```
