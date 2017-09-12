" Vim syntax file
" Language: /etc/hosts
" Last Change: 2015-05-04
" Author: Daniel Bolton <dbb008@gmail.com>
"
" https://github.com/dbb/vim/blob/master/hosts.vim

syntax match    hostsFileIPv4       /\(\(25\_[0-5]\|2\_[0-4]\_[0-9]\|\_[01]\?\_[0-9]\_[0-9]\?\)\.\)\{3\}\(25\_[0-5]\|2\_[0-4]\_[0-9]\|\_[01]\?\_[0-9]\_[0-9]\?\)\s\+/
highlight link  hostsFileIPv4       Constant

syntax match    hostsFileIPv6       /\S*[:]\S*/
highlight link  hostsFileIPv6       Identifier

"syntax region hostsFileDomain start=/^/ skip=// end=/$/ contains=hostsFileComment,hostsFileIPv4
"highlight link hostsFileDomain Identifier

syntax region   hostsFileComment    start=/#/ end=/$/
highlight link  hostsFileComment    Comment
