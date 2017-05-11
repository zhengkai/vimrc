    git clone https://github.com/zhengkai/vimrc.git ~/.vim
	mkdir ~/.tmp
	cd ~/.vim
    git submodule init
    git submodule update
	vim +BundleInstall +qall
