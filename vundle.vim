set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'JavaScript-syntax'
Bundle 'jQuery'
Bundle 'ervandew/supertab'
Bundle 'flazz/vim-colorschemes'
Bundle 'kana/vim-fakeclip'
Bundle 'kien/ctrlp.vim'
" Bundle 'tComment'
Bundle 'Markdown'
Bundle 'YankRing.vim'
Bundle 'fugitive.vim'
Bundle 'groenewege/vim-less'
Bundle 'jnwhiteh/vim-golang'
" Bundle 'Shougo/neocomplcache.vim'
Bundle 'majutsushi/tagbar'
Bundle 'KabbAmine/zeavim.vim'
if has("python")
	Bundle 'ashisha/image.vim'
endif
Bundle 'fatih/vim-go'
Bundle 'rkitover/vimpager'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'easymotion/vim-easymotion'
Bundle 'EvanDotPro/vim-php-syntax-check'

filetype plugin indent on
