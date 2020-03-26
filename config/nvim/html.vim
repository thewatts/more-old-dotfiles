"= HTML ========================================================================

  autocmd FileType html setlocal indentkeys-=*<Return>
  autocmd FileType html.handlebars setlocal indentkeys-=*<Return>
  autocmd FileType eruby setlocal indentkeys-=*<Return>
  autocmd FileType blade.php setlocal indentkeys-=*<Return>
  au BufRead,BufNewFile *.blade.php* set filetype=html
