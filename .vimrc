so ~/.vim/vundle.vim

" 识别 Alt 键
set ttimeoutlen=1
for UseAlt in range (65 , 90 ) + range ( 97 , 122)
	exe "set <M-" .nr2char(UseAlt).">=\<Esc>".nr2char(UseAlt)
endfor

nmap <M-w> :silent! set invwrap<CR>

" set timeout ttimeoutlen=50

set novisualbell
set clipboard=unnamedplus

set pastetoggle=<F10>

set nobomb
set nowrap

set autowrite
set nofoldenable

" 自动完成
so ~/.vim/complete.vim

" 配色
so ~/.vim/style.vim

" 状态栏
so ~/.vim/statusbar.vim

so ~/.vim/json_2_phparray.vim
so ~/.vim/format.vim
so ~/.vim/pair_complete.vim
so ~/.vim/tabline.vim

" 新建 PHP 文件模版
au BufNewFile *.php 0r ~/.vim/tpl/php|call cursor(2,0)
au BufNewFile *.html 0r ~/.vim/tpl/html|call cursor(8,0)
au BufNewFile *.sh 0r ~/.vim/tpl/sh|call cursor(2,0)

" 缩进
set si
set sw=4
set noet

" 无限恢复
set undofile
set undodir=~/.tmp
set directory=~/.tmp//

" 防止误操作
command W w
command WQ wq
command Q q
nmap <F1> <nop>
nmap <F3> <ESC>:%s/<C-v><C-m>//g<Enter>
nmap <M-c> <ESC>:wq!<Enter>

" 切换窗口
nmap q <C-W>w

" 退出所有窗口
nmap Q :qa<CR>

" 找括号
nmap { ?{<CR>
nmap } /{<CR>

" 使之前的单词字母大写
map! <C-F> <Esc>gUiw`]a

" X 粘贴 ( Ctrl + P )
nmap <C-P> "*P

" 帮助 ( Ctrl + 2 )
nmap <C-@> <ESC>:vert bo help<Space>

" CtrlP
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|mp3|gz|jpg|png|zip|swp|bmp|gif|rar|cue|flac)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" tComment
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

" YankRing

let g:yankring_replace_n_pkey = '<C-j>'
let g:yankring_replace_n_nkey = '<C-k>'
