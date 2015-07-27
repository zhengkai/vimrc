set nocompatible
set backspace=indent,eol,start

so ~/.vim/vundle.vim

syntax on
let g:EasyMotion_leader_key = '['
let g:EditorConfig_exec_path = '/usr/bin/editorconfig'

" 记住上一次的位置
au BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ exe "normal g`\"" |
	\ endif

nnoremap <F4> "=strftime("%F %T")<CR>Pl
inoremap <F4> <C-R>=strftime("%F %T")<CR>

nnoremap <C-x> iZheng Kai <zhengkai@gmail.com><Esc>l
inoremap <C-x> Zheng Kai <zhengkai@gmail.com>

" 识别 Alt 键
"so ~/.vim/escalt.vim
"nmap <M-w> <Esc>:silent! set invwrap<CR>

" set timeout ttimeoutlen=50

let Tlist_Use_Right_Window = 1

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
nnoremap <silent> <F3> :TagbarToggle<CR>
nmap <F4> <ESC>:%s/<C-v><C-m>//g<Enter>
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
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|mp3|gz|jpg|png|zip|swp|bmp|gif|rar|cue|flac)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" tComment
" nnoremap // :TComment<CR>
" vnoremap // :TComment<CR>

" YankRing

let g:yankring_replace_n_pkey = '<C-j>'
let g:yankring_replace_n_nkey = '<C-k>'
let g:yankring_history_dir = '~/.tmp'

" Tango

so ~/.vim/tango.vim
let g:tango_dir += [['/www/tango/www', '/www/tango/tpl'], ['/www/kt/www/', '/www/kt/tpl/'], ['/www/core/www/', '/www/core/tpl/'], ['/www/soulogic/www/', '/www/soulogic/tpl/']]

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
