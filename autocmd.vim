au BufWritePost /etc/nginx/* silent! !sudo service nginx reload

"------------------

au BufWritePost /home/zhengkai/hide/pac/list/*.txt silent! !/home/zhengkai/hide/pac/run.sh 2>&1 >/dev/null &
