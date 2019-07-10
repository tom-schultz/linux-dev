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

bash -c "base16_google-dark"

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

python3 -m venv env
