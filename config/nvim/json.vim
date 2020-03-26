"= JSON ========================================================================

  au BufNewFile,BufRead .eslintrc set filetype=json
  au BufNewFile,BufRead .babelrc set filetype=json

  " Requires 'jq' (brew install jq)
  function! s:PrettyJSON()
    %!jq .
    set filetype=json
  endfunction
  command! PrettyJSON :call <sid>PrettyJSON()
