set fillchars+=vert:│

set ruler
set showcmd

set incsearch
set hlsearch

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
" set ambiwidth=double

try
	colorscheme night-owl
catch
	let g:jellybeans_background_color = '000000'
	let g:jellybeans_background_color_256 = '000000'
	so ~/.vim/jellybeans.vim
endtry

hi Normal guibg=#000000
hi LineNr guifg=#605958 guibg=#000000

let g:lightline = {}

hi VertSplit ctermbg=NONE guibg=NONE

let g:lightline.colorscheme = 'zhengkai'
let g:lightline.tabline = {
\   'left': [['absolutepath']],
\   'right': [],
\ }

" let g:lightline.separator    = { 'left': '', 'right': '' }
let g:lightline.subseparator = { 'left': '│', 'right': '│' }

let g:lightline.component = {
\   'fileformat': ' %{&ff}',
\   'fileencoding': '%{&fenc!=#""?&fenc:&enc} ',
\ }

let g:lightline.active = {
\ 'left': [
\   [ 'mode', 'paste' ],
\   [ 'readonly' ],
\   [ 'modified' ],
\   [ 'filetype' ],
\   [ 'filesize' ],
\   [ 'gitbranch' ],
\ ],
\ 'right': [
\   [ 'lineinfo' ],
\   [ 'percent' ],
\   [ 'fileformat', 'fileencoding' ],
\ ],
\ }

function! FileSize()
	let bytes = getfsize(expand("%:p"))
	let bytes = substitute(bytes, '\d\zs\ze\%(\d\d\d\)\+$', ',', 'g')
	return bytes
endfunction

let g:lightline.component_function = {
\   'filesize': 'FileSize',
\   'gitbranch': 'fugitive#head',
\ }

let g:lightline.inactive = {
\   'left': [ [ 'readonly' ], [ 'modified' ], [ 'filename' ], [ 'gitbranch' ] ],
\   'right': [],
\ }

let g:jellybeans_overrides = {
\   'Comment': { 'guifg': '999999' },
\   'background': { 'guibg': '000000' },
\ }

" silent! colorscheme jellybeans

"let g:lightline = {
"\ 'colorscheme': 'wombat',
"\ }

hi ColorColumn ctermbg=233 guibg=#121212
let &colorcolumn="81,".join(range(120,999),",")

" silent! colorscheme desert256
" silent! colorscheme graywh

"hi Search cterm=NONE ctermfg=015 ctermbg=006
"
hi TabLine cterm=none ctermfg=16 ctermbg=24 guibg=#005f87
hi TabLineSel cterm=none ctermfg=16 ctermbg=39 guibg=#00afff
hi TabLineFill cterm=none ctermbg=24 guibg=#005f87
"
"hi def link phpVarSelector Identifier
"
"hi phpStringSingle ctermfg=215
"hi phpStringDouble ctermfg=215
"hi phpQuote ctermfg=215 cterm=bold
"
"hi Normal ctermbg=16 guibg=black
"hi NonText ctermbg=233
"hi LineNr   ctermbg=233 ctermfg=246
"
"
"" 118
"
"hi phpComment ctermfg=141 ctermbg=16
"hi phpFunctions ctermfg=45
"hi phpClassesTag cterm=bold ctermfg=219
"hi phpFunctionsTag cterm=bold ctermfg=75
"hi phpSpecial ctermfg=123
"hi Statement ctermfg=228 cterm=none
"hi phpSpecialFunction ctermfg=45
"hi Type ctermfg=228 cterm=none
"hi phpClassesTag cterm=none
"
"hi Pmenu    ctermbg=127 ctermfg=16
"hi PmenuSel ctermbg=201 ctermfg=16 cterm=none
"
set cursorline
hi Cursor guifg=white guibg=black
hi CursorLine cterm=none ctermbg=235 guibg=#303030
hi CursorLineNr cterm=none ctermbg=235 ctermfg=255 guibg=#303030
"
"hi SpecialKey cterm=none ctermfg=240 ctermbg=16
"
"hi SignColumn ctermbg=235
"
"hi phpFunctionsTag cterm=none
"
""diff
"
"hi DiffAdd ctermbg=24
"hi DiffDelete ctermbg=233 ctermfg=233
"hi DiffChange ctermbg=22
"hi DiffText ctermbg=156 ctermfg=16
"
"hi def link diffSubname Normal
"hi diffFile cterm=bold ctermfg=222
"hi diffLine ctermfg=39
"hi DiffAdded ctermfg=118
"hi DiffRemoved ctermfg=208
"
" au InsertEnter * hi StatusLine ctermbg=208
" au InsertLeave * hi StatusLine ctermbg=39
" hi StatusLine guibg=#303030 ctermbg=236
"
set laststatus=2
set numberwidth=6
set sidescrolloff=10
"
" hi StatusLine   ctermfg=16  ctermbg=39  cterm=none
" hi StatusLineNC ctermfg=16  ctermbg=24  cterm=none
hi VertSplit    ctermfg=238 ctermbg=238 cterm=none
"
"hi MarkWord1 ctermbg=61  ctermfg=253
"hi MarkWord2 ctermbg=132 ctermfg=253
"hi MarkWord3 ctermbg=204 ctermfg=253
"hi MarkWord4 ctermbg=31  ctermfg=253
"hi MarkWord5 ctermbg=102 ctermfg=253
"hi MarkWord6 ctermbg=175 ctermfg=253
"
"" QuickFix
"hi qfFileName cterm=none ctermfg=228
"hi qfLineNr cterm=none ctermfg=120

hi htmlTag guifg=#4EC9B0

hi ALEErrorSign   guifg=#9B154F guibg=#9B154F
hi ALEWarningSign guifg=#4F000B guibg=#4F000B

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
