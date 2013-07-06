
set ruler
set showcmd
set incsearch

set tabstop=4
set shiftwidth=4

set showmatch
set number

set nobomb

set display=lastline
syntax sync fromstart

set guifont=Ubuntu\ Mono\ 14

set encoding=utf-8
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin1
set ambiwidth=double

hi clear

colorscheme desert256
"colorscheme graywh

hi normal ctermfg=255

hi TabLine cterm=none ctermfg=16 ctermbg=24
hi TabLineSel cterm=none ctermfg=16 ctermbg=39
hi TabLineFill cterm=none ctermbg=24

hi def link phpVarSelector Identifier

hi phpStringSingle ctermfg=215
hi phpStringDouble ctermfg=215
hi phpQuote ctermfg=215 cterm=bold

hi Normal ctermbg=16
hi NonText ctermbg=233
hi LineNr   ctermbg=233 ctermfg=246

hi ColorColumn ctermbg=233 guibg=#121212
let &colorcolumn="81,".join(range(120,999),",")

hi phpComment ctermfg=141 ctermbg=16
hi phpFunctions ctermfg=45
hi phpClassesTag cterm=bold ctermfg=219
hi phpFunctionsTag cterm=bold ctermfg=75
hi phpSpecial ctermfg=123
hi Statement ctermfg=228 cterm=none
hi Type ctermfg=228 cterm=none
hi phpClassesTag cterm=none

hi Pmenu    ctermbg=127 ctermfg=16
hi PmenuSel ctermbg=201 ctermfg=16 cterm=none

set cursorline
hi CursorLine cterm=none ctermbg=235
hi CursorLineNr cterm=none ctermbg=235 ctermfg=255

hi SpecialKey cterm=none ctermfg=240 ctermbg=16

hi SignColumn ctermbg=235

hi phpFunctionsTag cterm=none
hi Search ctermbg=237

"diff

hi DiffAdd ctermbg=24
hi DiffDelete ctermbg=233 ctermfg=233
hi DiffChange ctermbg=22
hi DiffText ctermbg=156 ctermfg=16

hi def link diffSubname Normal
hi diffFile cterm=bold ctermfg=222
hi diffLine ctermfg=39
hi DiffAdded ctermfg=118
hi DiffRemoved ctermfg=208

au InsertEnter * hi StatusLine ctermbg=208
au InsertLeave * hi StatusLine ctermbg=39

set laststatus=2
set numberwidth=6
set sidescrolloff=10

hi StatusLine   ctermfg=16  ctermbg=39  cterm=none
hi StatusLineNC ctermfg=16  ctermbg=24  cterm=none
hi VertSplit    ctermfg=238 ctermbg=238 cterm=none

hi MarkWord1 ctermbg=61  ctermfg=253
hi MarkWord2 ctermbg=132 ctermfg=253
hi MarkWord3 ctermbg=204 ctermfg=253
hi MarkWord4 ctermbg=31  ctermfg=253
hi MarkWord5 ctermbg=102 ctermfg=253
hi MarkWord6 ctermbg=175 ctermfg=253

" QuickFix
hi qfFileName cterm=none ctermfg=228
hi qfLineNr cterm=none ctermfg=120

"cnoremap ttab call ToggleIndentGuides()
function! ToggleIndentGuides()
	if exists('b:indent_guides')
		set list listchars=tab:\ \ ,
		unlet b:indent_guides
	else
		set list listchars=tab:⌞\ ,
		let b:indent_guides = 1
	endif
endfunction

nmap <F6> :call <SID>SynStack()<CR>

function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
