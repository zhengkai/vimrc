" " modified from http://vim.wikia.com/wiki/Runtime_syntax_check_for_php
"
" if !exists('*PHPsynCHK')
"   function! PHPsynCHK()
"     ccl
" 	silent! undojoin | silent! call RemoveTrailingWhitespace()
"     let winnum = winnr() " get current window number
"     let linenum = line('.')
"     let colnum = col('.')
"     "silent execute "%!php -l -f /dev/stdin | sed 's/\\/dev\\/stdin/".bufname("%")."/g' >.vimerr; cat"
"     silent execute "%!php -nl ".expand('%')." | sed 's/\\/dev\\/stdin/".expand("%:t")."/g' > ~/.tmp/vimerr; cat"
"     silent cf ~/.tmp/vimerr
"     cw " open the error window if it contains error
"     " return to the window with cursor set on the line of the first error (if any)
"     execute winnum . "wincmd w"
"     "silent undo
"     silent cf
"     if 1 == len(getqflist())
"       call cursor(linenum, colnum)
"     endif
"   endfunction
" endif
"
" au! BufWritePost *.php call PHPsynCHK()
"
" set errorformat=%m\ in\ %f\ on\ line\ %l
