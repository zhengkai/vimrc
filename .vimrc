so ~/.vim/vundle.vim

" 识别 Alt 键
map <m-a> ggVG
map <m-b> ggVG
set <m-b>=b
"so ~/.vim/escalt.vim
set ttimeoutlen=1
" for UseAlt in range (65 , 90 ) + range ( 97 , 122)
"         exe "set <M-" .nr2char(UseAlt).">=\<Esc>".nr2char(UseAlt)
" endfor

set timeout ttimeoutlen=50

set novisualbell
set clipboard=unnamedplus

set pastetoggle=<F10>

set nobomb

" 自动完成
so ~/.vim/complete.vim

" 配色
so ~/.vim/style.vim

" 状态栏
so ~/oldvimrc/statusbar.vim

so ~/.vim/json_2_phparray.vim
so ~/.vim/format.vim
so ~/.vim/pair_complete.vim
so ~/.vim/tabline.vim

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
nmap <M-C> <ESC>:wq!<Enter>

" 切换窗口
nmap q <C-W>w

" 退出所有窗口
nmap Q :qa<CR>

" 找括号
nmap { ?{<CR>
nmap } /{<CR>

" 使之前的单词字母大写
map! <C-F> <Esc>gUiw`]a

" nmap <C-K> 10<C-Y>
" nmap <C-J> 10<C-E>

let g:yankring_replace_n_pkey = '<C-j>'
let g:yankring_replace_n_nkey = '<C-k>'

" X 粘贴 ( Ctrl + P )
nmap <C-P> "*P

" 帮助 ( Ctrl + 2 )
nmap <C-@> <ESC>:vert bo help<Space>

" .zhengkai 文件高亮
au BufRead,BufNewFile .zhengkai,.zhengkai_alias set filetype=sh

imap <F3> <ESC>
set nowrap

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
