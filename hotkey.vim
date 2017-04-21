" 执行当前文件
nmap <S-U> :!clear && %:p<CR>

" 切换窗口
nmap q <C-W>w

" 退出所有窗口
nmap Q :qa<CR>

" 找括号
nmap { ?{<CR>
nmap } /{<CR>

" 帮助 ( Ctrl + 2 )
nmap <C-@> <ESC>:vert bo help<Space>

" 使之前的单词字母大写
map! <C-F> <Esc>gUiw`]a

" git blame
nmap <S-B> :Gblame<CR>
