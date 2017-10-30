au BufWritePost /etc/nginx/* silent! !sudo service nginx reload >/dev/null 2>&1 &

"------------------

au BufWritePost /home/zhengkai/hide/pac/list/*.txt silent! !/home/zhengkai/hide/pac/run.sh >/dev/null 2>&1 &

"au BufReadPre,BufNewFile /www/slayone/**/* set ts=4 expandtab

"au BufWritePost /www/wx/www/res/*.less silent! !/www/wx/www/res/run.sh 2>&1 >/dev/null &
