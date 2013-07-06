" 将 JSON 转换为 PHP Array 的形式
function JSON2PHP()
	let b:curcol = col(".")
	let b:curline = line(".")
	"va{ 还不知道怎么把这个命令在函数里执行
	'<,'>s/{/[/ge
	'<,'>s/: / => /ge
	'<,'>s/}/]/ge
	'<,'>s/    /\t/ge
	call cursor(b:curline, b:curcol)
endfunction

nmap <F5> va{:call JSON2PHP()<Enter><Enter>
vmap <F5> :call JSON2PHP()<Enter><Enter>
