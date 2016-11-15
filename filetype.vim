" nginx
au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif
au BufRead,BufNewFile nginx.conf,vhost.conf setfiletype nginx

" PHP
au FileType php setlocal keywordprg=pman

" .zhengkai 文件高亮
au BufRead,BufNewFile .zhengkai,.bash_alias setfiletype sh

" .sql 文件默认为 MySQL 而不是 sql
au BufRead,BufNewFile *.sql set filetype=mysql

" CSS in SuperTab
au FileType css,less let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" csv
au BufRead,BufNewFile *.csv set filetype=csv

" csv
au BufRead,BufNewFile *.less set filetype=less

" hosts
au BufRead,BufNewFile hosts set filetype=hosts

au BufRead,BufNewFile *.cue set filetype=cue
