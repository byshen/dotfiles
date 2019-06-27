```
mv .vimrc .vimrc_bkup
git clone https://github.com/byshen/dotfiles.git
cp dotfiles/.vimrc .
mkdir .vim/
cp -r dotfiles/.vim/* .vim/
cd ~/.vim
git init
vim
PlugInstall
```
