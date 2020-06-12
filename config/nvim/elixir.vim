function! ExecuteElixirCode()
  exec ":split | term elixir " . @%
endfunction

function! OpenIEX()
  exec ":split | term iex -S mix"
endfunction

map <Leader>b :call ExecuteElixirCode()<cr>
nmap <Leader>e :call OpenIEX()<cr>
