" 执行当前文件
nmap <S-U> :!clear && %:p<CR>

" 切换窗口
nmap q <C-W>w

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
