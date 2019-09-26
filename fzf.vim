let g:fzf_action = {
	\ 'enter': 'vsplit',
	\ 'ctrl-t': 'tabedit',
	\ 'ctrl-x': 'split',
	\ }

function! s:find_git_root()
    return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction
command! ProjectFiles execute 'Files' s:find_git_root()
nnoremap <C-p> :ProjectFiles<CR>
