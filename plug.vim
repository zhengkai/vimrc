" https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/.plugged')

" Plug 'nanotech/jellybeans.vim'
Plug 'itchyny/lightline.vim'

Plug 'haishanh/night-owl.vim'

Plug 'Valloric/YouCompleteMe', { 'do': 'python3 install.py --clang-completer --go-completer --ts-completer --java-completer' }

" Plug 'KabbAmine/zeavim.vim'
" Plug 'Shougo/neocomplcache.vim'
" Plug 'ashisha/image.vim'
" Plug 'ervandew/supertab'
" Plug 'jason0x43/vim-js-indent'
" Plug 'jiangmiao/auto-pairs'
" Plug 'jparise/vim-graphql'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'maralla/completor.vim'
" Plug 'mxw/vim-jsx'
" Plug 'sheerun/vim-polyglot'
" Plug 'sirver/ultisnips'
" Plug 'skywind3000/vim-keysound'
" Plug 'tpope/vim-surround'
" Plug 'vim-scripts/jQuery'
" Plug 'vim-syntastic/syntastic'
" Plug 'shawncplus/phpcomplete.vim'
" Plug 'junegunn/vim-easy-align'
" Plug 'StanAngeloff/php.vim'

Plug 'Quramy/tsuquyomi' " typescript
Plug 'airblade/vim-gitgutter'
Plug 'cocopon/svss.vim'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'flowtype/vim-flow'
Plug 'groenewege/vim-less'
Plug 'guns/xterm-color-table.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'kana/vim-fakeclip'
Plug 'leafgarland/typescript-vim'
Plug 'majutsushi/tagbar'
Plug 'pangloss/vim-javascript'
Plug 'rking/ag.vim'
Plug 'tomtom/tcomment_vim'

Plug 'rkitover/vimpager'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'vim-scripts/YankRing.vim'
" Plug 'w0rp/ale'

call plug#end()
