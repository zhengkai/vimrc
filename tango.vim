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

	let bFound = 0

	" 根据规则比对文件
	for sBaseDir in g:tango_dir

		if stridx(sFile, sBaseDir) != 0
			continue
		endif

		let iLen = strlen(sBaseDir)
		for sSubDir in ["www", "tpl"]

			let sBody = strpart(sFile, iLen)
			if stridx(sBody, sSubDir) != -1

				if sSubDir == "www"
					let sReplace = "tpl"
				else
					let sReplace = "www"
				endif

				let sBody = substitute(sBody, sSubDir, sReplace, "")
				let sSwitchFile = sBaseDir.sBody

				let sSwitchDir = fnamemodify(sSwitchFile, ":h")
				if isdirectory(sSwitchDir)
					let newWindow = (sSubDir == "www") ? "bo" : "to"
				else
					echo "Tango Error: can not switch dir ".sSwitchDir
					return
				endif

				break

			endif

		endfor
	endfor

	if !strlen(newWindow)
		echo "Tango Error: no Tango File"
		return
	endif

	" 防止重复加载
	echo "Tango: switch file ".sSwitchFile
	for i in tabpagebuflist()
		let sBuffer = fnamemodify(bufname(i), ":p")
		if sBuffer is sSwitchFile
			echo sSwitchFile." loaded"
			return
		endif
	endfor

	" 打开文件
	silent! only
	execute newWindow." vs ".fnameescape(sSwitchFile)

endfunction
