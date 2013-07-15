function! FileSize()
	let bytes = getfsize(expand("%:p"))
	return ' [filesize=' . bytes . ']'
endfunction

set statusline=%{fnamemodify(bufname('%'),':p')}\ \ \    "tail of the filename
"set statusline+=%P\ %4l\ \ \   "percent through file
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}]   "file format
set statusline+=\ %m      "modified flag
set statusline+=\ %r      "read only flag
set statusline+=\ %y      "filetype
set statusline+=%{FileSize()}
set statusline+=\ %h      "help file flag
"set statusline+=%=      "left/right separator
set statusline+=[\ X\ =\ %c\,\ Y\ =\ %l\ /\ %L\ ]     "cursor column
