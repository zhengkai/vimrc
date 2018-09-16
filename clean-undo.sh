#!/bin/bash

cd ~/.tmp/vim-undo || exit 1

find . -type f -ctime +10 -delete
