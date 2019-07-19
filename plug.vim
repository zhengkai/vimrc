" https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/.plugged')

" Plug 'nanotech/jellybeans.vim'
Plug 'itchyny/lightline.vim'

Plug 'haishanh/night-owl.vim'

Plug 'guns/xterm-color-table.vim'

Plug 'junegunn/vim-easy-align'
Plug 'cocopon/svss.vim'

" Plug 'skywind3000/vim-keysound'

Plug 'w0rp/ale'
" Plug 'sheerun/vim-polyglot'
" Plug 'sirver/ultisnips'
" Plug 'tpope/vim-surround'

Plug 'leafgarland/typescript-vim'
Plug 'flowtype/vim-flow'
" Plug 'jparise/vim-graphql'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-markdown'

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-fugitive'

" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'jiangmiao/auto-pairs'

Plug 'maralla/completor.vim'

Plug 'Valloric/YouCompleteMe', { 'do': 'python3 install.py --clang-completer --go-completer --ts-completer --java-completer' }

Plug 'Quramy/tsuquyomi'
Plug 'jason0x43/vim-js-indent'
" Plug 'vim-scripts/jQuery'
" Plug 'ervandew/supertab'
Plug 'kana/vim-fakeclip'
Plug 'tomtom/tcomment_vim'
Plug 'vim-scripts/YankRing.vim'
Plug 'groenewege/vim-less'
" Plug 'Shougo/neocomplcache.vim'
Plug 'majutsushi/tagbar'
" Plug 'vim-syntastic/syntastic'
" Plug 'KabbAmine/zeavim.vim'
" Plug 'ashisha/image.vim'
Plug 'rking/ag.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'StanAngeloff/php.vim'
Plug 'shawncplus/phpcomplete.vim'
Plug 'rkitover/vimpager'
Plug 'editorconfig/editorconfig-vim'
Plug 'easymotion/vim-easymotion'

" Plug 'mxw/vim-jsx'

call plug#end()
