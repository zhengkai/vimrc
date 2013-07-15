" nginx
au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif
au BufRead,BufNewFile nginx.conf setfiletype nginx

" .zhengkai 文件高亮
au BufRead,BufNewFile .zhengkai,.zhengkai_alias setfiletype sh

" .sql 文件默认为 MySQL 而不是 sql
au BufRead,BufNewFile *.sql set filetype=mysql
