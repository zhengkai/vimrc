" 自动完成

set completeopt=menu

au FileType php set dictionary+=~/.vim/php_func.txt

au FileType python set omnifunc=pythoncomplete#Complete
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS
au FileType xml set omnifunc=xmlcomplete#CompleteTags
au FileType php set omnifunc=phpcomplete#CompletePHP
au FileType c set omnifunc=ccomplete#Complete

set complete-=k complete+=k
"set cscopequickfix=s-,c-,d-,i-,t-,e-
set infercase

"let g:SuperTabRetainCompletionType = 0
let g:SuperTabDefaultCompletionType = "context"
"
"let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
"let g:SuperTabContextTextOmniPrecedence = ['&completefunc', '&omnifunc']
"let g:SuperTabContextDiscoverDiscovery = ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]
"let g:SuperTabContextDefaultCompletionType = "<c-u>"
let g:SuperTabMappingTabLiteral = "<C-Tab>"

" Eclim 回车查看变量
let g:EclimDefaultFileOpenAction = 'vsplit'
