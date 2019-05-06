" https://stackoverflow.com/a/27206531/966103
" alt + left
map <Esc>[1;3D :echo yes

nnoremap <silent> <Esc>3 :TagbarToggle<CR>

" 防止误操作
command W w
command WQ wq
command Q q
nmap <F1> <nop>

nmap <F4> <ESC>:%s/<C-v><C-m>//g<Enter>

" 通过文件传 yank
nmap <C-Y> :call writefile(split(@@, "\n", 1), $HOME . '/.tmp/vimclip')<CR>
nmap <C-I> :r $HOME/.tmp/vimclip<CR>

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
