au BufReadPost *.go nnoremap <C-X> :call GoRefWindow()<CR>

function! GoRefWindow()

	let x=filter(range(1, winnr('$')), 'getwinvar(v:val, "&ft") == "qf"')
	if len(x) > 0
		:cclose
	else
		:GoReferrers
		:copen
	endif

endfunction
