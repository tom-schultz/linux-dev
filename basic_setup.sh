ln -sf ~/.linux-dev/bashrc ~/.bashrc
ln -sf ~/.linux-dev/bash_aliases ~/.bash_aliases
ln -sf ~/.linux-dev/screen-keys.conf ~/.tmux.conf
ln -sf ~/.linux-dev/gitconfig ~/.gitconfig
ln -sf ~/.linux-dev/vimrc ~/.vimrc
touch ~/.localbashrc
touch ~/.localbash_aliases
touch ~/.localgitconfig
touch ~/.localvimrc

git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

chmod +x ~/.config/base16-shell/scripts/base16-*
~/.config/base16-shell/scripts/base16-google-dark.sh

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

mkdir -p ~/.python
cd ~/.python
python3 -m venv p3
