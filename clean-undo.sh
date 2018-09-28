#!/bin/bash -ex

cd ~/.tmp/vim-undo && find . -type f -ctime +10 -delete
cd ~/.tmp/vim-swap && find . -type f -ctime +10 -delete
