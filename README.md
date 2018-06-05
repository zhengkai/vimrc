    git clone https://github.com/zhengkai/vimrc.git ~/.vim
    mkdir -p ~/.tmp/vim-undo
    cd ~/.vim
    git submodule update --init --recursive
    vim +BundleInstall +qall
