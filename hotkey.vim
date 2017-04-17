" 执行当前文件
nmap <C-S-O> :!clear && %:p<CR>
nmap <S-K> <nop>

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

let mapleader = "\<Space>"

"nnoremap <nowait> <Leader>w :execute 'silent w !sudo tee % > /dev/null' | :e!
nnoremap <nowait> <Leader>d y$
nnoremap <nowait> <Leader>b :Gblame<CR>
nnoremap <nowait> <Leader>r :!clear && %:p<CR>
