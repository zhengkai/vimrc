    git clone https://github.com/zhengkai/vimrc.git ~/.vim
    mkdir -p ~/.tmp/vim-undo
    mkdir -p ~/.tmp/vim-swap
    cd ~/.vim
    git submodule update --init --recursive
    vim +PlugInstall +qall
