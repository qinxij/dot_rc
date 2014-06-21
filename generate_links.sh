#! /bin/zsh

mkdir ~/.bak
CURRENT_DIR=`pwd`

mv ~/.pip ~/.bak/.pip
ln -s $CURRENT_DIR/.pip ~/.pip

mv ~/.gitconfig ~/.bak/.gitconfig
ln -s $CURRENT_DIR/.gitconfig ~/.gitconfig

mv ~/.tmux.conf ~/.bak/.tmux.conf
ln -s $CURRENT_DIR/.tmux.conf ~/.tmux.conf

mv ~/.vimperatorrc ~/.bak/.vimperatorrc
ln -s $CURRENT_DIR/.vimperatorrc ~/.vimperatorrc

mv ~/.zshrc ~/.bak/.zshrc
ln -s $CURRENT_DIR/.zshrc ~/.zshrc
