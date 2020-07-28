nnoremap <C-T> "=strftime("%F %T")<CR>P
inoremap <C-T> <C-R>=strftime("%F %T")<CR>

" nnoremap <C-X> iZheng Kai <zhengkai@gmail.com><Esc>l
" inoremap <C-X> Zheng Kai <zhengkai@gmail.com>

" https://stackoverflow.com/a/27206531/966103
" alt + left
map <Esc>[1;3D :echo yes

nnoremap <silent> <Esc>f :let @+=expand('%:p')<CR>

" YCM 函数 preview 窗口，及关闭
nnoremap <silent> <Esc>h :YcmCompleter GetDoc<CR>
nnoremap <silent> <Esc>j :pclose<CR>
nnoremap <silent> <Esc>t :YcmCompleter GetType<CR>
autocmd FileType javascript nnoremap <silent> <C-]> :YcmCompleter GoToDefinitionElseDeclaration<CR>

" 兼容 F3 按错
nnoremap <silent> <Esc>3 :TagbarToggle<CR>

" 防止误操作
command W w
command WQ wq
command Q q
nmap <F1> <nop>

nmap <F4> <ESC>:%s/<C-v><C-m>//g<Enter>

" 通过文件传 yank
" Alt+y Alt+i
nmap <Esc>y :call writefile(split(@@, "\n", 1), $HOME . '/.tmp/vimclip')<CR>
nmap <Esc>i :r $HOME/.tmp/vimclip<CR>

" 执行当前文件
nmap <S-U> :!clear && %:p<CR>

" 切换窗口
nmap q <C-W>w
" alt + q，反序切窗口
map <Esc>q <C-W>W

" 退出所有窗口
nmap Q :qa<CR>

" 关闭缺省 man
" nmap <S-K> <Nop>

" 找括号
nmap { ?{<CR>
nmap } /{<CR>

" 帮助 ( Ctrl + 2 )
nmap <C-@> <ESC>:vert bo help<Space>

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction
command! ProjectFiles execute 'Files' s:find_git_root()
nmap <C-P> <ESC>:GFiles<CR>
nmap <Esc>p <ESC>:ProjectFiles<CR>

" 使之前的单词字母大写
map! <C-F> <Esc>gUiw`]a

" git blame
nmap <S-B> :Gblame<CR>

" emmet 自动完成
nnoremap , :call emmet#expandAbbr(3,"")<cr>
"inoremap , <c-r>=emmet#util#closePopup()<cr><c-r>=emmet#expandAbbr(0,"")<cr>
"vnoremap , :call emmet#expandAbbr(3,"")<cr>
