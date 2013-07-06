#!/bin/bash
ctags \
-f ~/.vim/tags \
-h ".php" -R \
--exclude="\.git" \
--totals=yes \
--tag-relative=yes \
--PHP-kinds=+ivcf \
--regex-PHP='/(abstract)?\s+class\s+([^ ]+)/\2/c/' \
--regex-PHP='/(static|abstract|public|protected|private)\s+function\s+(\&\s+)?([^ (]+)/\3/f/' \
--regex-PHP='/interface\s+([^ ]+)/\1/i/' \
--regex-PHP='/\$([a-zA-Z_][a-zA-Z0-9_]*)/\1/v/' \
/www/royal/
