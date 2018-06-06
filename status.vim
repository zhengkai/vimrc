hi StatusLine   ctermfg=16 cterm=none
hi StatusLineNC ctermfg=16 ctermbg=24 cterm=none

au InsertEnter * call status#insert()
au InsertLeave * call status#normal()

"vnoremap <silent> <expr> <SID>status#visual status#visual()
"nnoremap <silent> <script> v v<SID>status#visual
"nnoremap <silent> <script> V V<SID>status#visual
"nnoremap <silent> <script> <C-v> <C-v><SID>status#visual
"
"function! status#visual()
"	hi StatusLine ctermbg=129
"endfunction

function! status#normal()
	hi StatusLine ctermbg=39
endfunction
call status#normal()

function! status#insert()
	hi StatusLine ctermbg=214
endfunction
