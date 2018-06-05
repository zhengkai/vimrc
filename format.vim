" 删除空行
function RemoveTrailingWhitespace()
	if &ft != "diff"
		let b:curcol = col(".")
		let b:curline = line(".")
		%s/\s\+$//e
		" $put _
		%s/\(\s*\n\)\+\%$/\r/ " 删除结尾空格
		%s/\n\{3,}/\r\r/e " 删除多余空行
		%s/\n\+\%$//ge " 删除文件尾部多余换行
		call cursor(b:curline, b:curcol)
	endif
endfunction

function JavaScriptSyntax()

	let bin = get(g:, 'node_bin', '/usr/bin/env node')
	let cmd = bin . ' ' . shellescape(expand('%:p'))
	let msg = systemlist(cmd)

	if len(msg) && msg[4] =~ 'SyntaxError'

		let ln = matchstr(msg[0], '[0-9]\+\>')
		if strlen(ln)
			exe ':' . ln
		endif

		echo ' '
		echo msg[0]
		echo ' '
		echo msg[4]
		echo ' '
	endif
endfunction

" UNIX 换行
au FileType php,sh,zsh,javascript,css,less,sass,scss,text,html,dosini,vim,gitconfig,conf,nginx au BufWritePre * :silent! undojoin | silent! call RemoveTrailingWhitespace()
au FileType php,sh,zsh,javascript,css,less,sass,scss,text,html,dosini,vim,gitconfig,conf,nginx,mkd silent! set fileformat=unix
au FileType go au BufWritePre * :silent! undojoin | silent! call RemoveTrailingWhitespace() | silent! Fmt
au FileType javascript au BufWritePost * :call JavaScriptSyntax()
