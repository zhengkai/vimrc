nmap <F2> :call TangoSwtich()<CR>

if exists("g:tango_switch")
	finish
endif
let g:tango_switch = 1

if !exists("g:tango_dir")
	let g:tango_dir = []
endif

function! TangoSwtich()

	let sFile = expand('%:p')
	if strpart(sFile, strlen(sFile) - 4, 4) != ".php"
		echo "not a PHP file"
		return
	endif

	let newWindow = ""

	" 根据规则比对文件
	for item in g:tango_dir
		for i in [0, 1]
			if stridx(sFile, item[i]) != 0
				continue
			endif
			let sSwitchFile = item[1 - i].strpart(sFile, strlen(item[i]))
			let newWindow = i ? "to" : "bo"
		endfor
	endfor

	if !strlen(newWindow)
		echo "no Tango File"
		return
	endif

	" 防止重复加载
	echo "switchfile ".sSwitchFile
	for i in tabpagebuflist()
		let sBuffer = fnamemodify(bufname(i), ":p")
		if sBuffer is sSwitchFile
			echo sSwitchFile." loaded"
			return
		endif
	endfor

	" 打开文件
	only
	echo sSwitchFile
	execute newWindow." vs ".fnameescape(sSwitchFile)

endfunction
