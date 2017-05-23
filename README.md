    git clone https://github.com/zhengkai/vimrc.git ~/.vim
    mkdir ~/.tmp
    cd ~/.vim
    git submodule update --init --recursive
    vim +BundleInstall +qall
