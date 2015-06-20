ln -sf ~/.linux-dev/bashrc ~/.bashrc
ln -sf ~/.linux-dev/bash_aliases ~/.bash_aliases
ln -sf ~/.linux-dev/screen_keys.conf ~/.tmux.conf
ln -sf ~/.linux-dev/gitconfig ~/.gitconfig
ln -sf ~/.linux-dev/vimrc ~/.vimrc
touch ~/.localbash_aliases
touch ~/.localgitconfig
touch ~/.localvimrc

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
