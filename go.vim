au FileType go nnoremap <C-X> :call GoRefWindow()<CR>

let mapleader = "\\"

let g:go_doc_popup_window = 1
let g:go_auto_type_info = 1
let g:go_updatetime = 200

au FileType go nmap <leader>d <Plug>(go-doc)
au FileType go nmap <leader>f <Plug>(go-def-vertical)
au FileType go nmap <leader>c <Plug>(go-callstack)
au FileType go nmap <leader>p <Plug>(go-pointsto)

let g:go_info_mode='gopls'
let g:go_def_mode='gopls'

function! GoRefWindow()

	let x=filter(range(1, winnr('$')), 'getwinvar(v:val, "&ft") == "qf"')
	if len(x) > 0
		:lclose
	else
		:GoReferrers
		:lopen
	endif

endfunction
