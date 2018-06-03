set nocompatible
set backspace=indent,eol,start

so ~/.vim/plug.vim

set termguicolors
set t_8b=[48;2;%lu;%lu;%lum
set t_8f=[38;2;%lu;%lu;%lum

syntax on
let g:EasyMotion_leader_key = '['
let g:EditorConfig_exec_path = '/usr/bin/editorconfig'
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']

let g:node_bin = '/home/zhengkai/.nvm/versions/node/v4.6.2/bin/node'

let g:ctrlp_prompt_mappings = {
	\ 'AcceptSelection("e")': ['<c-v>', '<2-LeftMouse>'],
	\ 'AcceptSelection("v")': ['<cr>', '<RightMouse>'],
	\ }

" 记住上一次的位置
au BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ exe "normal g`\"" |
	\ endif

nnoremap <F4> "=strftime("%F %T")<CR>Pl
inoremap <F4> <C-R>=strftime("%F %T")<CR>

nnoremap <C-x> iZheng Kai <zhengkai@gmail.com><Esc>l
inoremap <C-x> Zheng Kai <zhengkai@gmail.com>

" set timeout ttimeoutlen=50

let Tlist_Use_Right_Window = 1

set novisualbell
set clipboard=unnamedplus

set pastetoggle=<F10>

set nobomb
set nowrap

set autowrite
set nofoldenable

" 自动完成
so ~/.vim/complete.vim

" 配色
so ~/.vim/style.vim

" 状态栏
so ~/.vim/statusbar.vim

so ~/.vim/json_2_phparray.vim
so ~/.vim/format.vim
so ~/.vim/pair_complete.vim
so ~/.vim/tabline.vim

" 新建 PHP 文件模版
au BufNewFile *.php silent! 0r ~/.vim/tpl/php|call cursor(2,0)
au BufNewFile *.html silent! 0r ~/.vim/tpl/html|call cursor(8,0)
au BufNewFile *.sh silent! 0r ~/.vim/tpl/sh|call cursor(2,0)

" 防止误操作
command W w
command WQ wq
command Q q
nmap <F1> <nop>

nmap <F4> <ESC>:%s/<C-v><C-m>//g<Enter>

" 通过文件传 yank
nmap <C-Y> :call writefile(split(@@, "\n", 1), $HOME . '/.tmp/vimclip')<CR>
nmap <C-I> :r $HOME/.tmp/vimclip<CR>

" TagBar
nnoremap <silent> <F3> :TagbarToggle<CR>
let g:tagbar_type_php  = {
	\ 'ctagstype' : 'php',
	\ 'kinds'     : [
		\ 'i:interfaces',
		\ 'c:classes',
		\ 'd:constant definitions',
		\ 'f:functions',
		\ 'j:javascript functions:1'
	\ ]
	\ }
let g:tagbar_map_close = '<S-W>'

" X 粘贴 ( Ctrl + P )
"nmap <C-P> "*P

" CtrlP
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc$|vendor$',
  \ 'file': '\v\.(exe|so|dll|mp3|gz|jpg|png|zip|swp|bmp|gif|rar|cue|flac)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
"let g:ctrlp_user_command = 'find %s -type f'

" tComment
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

" YankRing
let g:yankring_replace_n_pkey = '<C-j>'
let g:yankring_replace_n_nkey = '<C-k>'
let g:yankring_history_dir = '~/.tmp'

" ESLint
" let g:syntastic_javascript_checkers=['eslint']
" let g:syntastic_php_checkers=['']
" let g:syntastic_go_checkers=['']
"
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" ag.vim

let g:ag_prg="/usr/bin/ag --vimgrep"
let g:ag_working_path_mode="r"
nmap <C-G> <ESC>:Ag<Space>

" go
let g:go_fmt_command = "goimports"

" Tango

so ~/.vim/tango.vim
let g:tango_dir += ['/www/']

" neocomplcache
let g:neocomplcache_enable_at_startup = 1

so ~/.vim/hotkey.vim
so ~/.vim/autocmd.vim

" virtual search
vnoremap <silent> * :<C-U>
    \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
    \gvy/<C-R><C-R>=substitute(
    \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
    \gV:call setreg('"', old_reg, old_regtype)<CR>

vnoremap <silent> # :<C-U>
    \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
    \gvy?<C-R><C-R>=substitute(
    \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
    \gV:call setreg('"', old_reg, old_regtype)<CR>
