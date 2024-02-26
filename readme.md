## install stow and git
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
