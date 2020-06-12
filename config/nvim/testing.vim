"- TESTING =====================================================================

  let test#neovim#term_position = "bel"
  let test#ruby#use_spring_binstub = 1
  let g:test#preserve_screen = 1

  nmap <silent> <leader>s :TestNearest<CR>
  nmap <silent> <leader>t :TestFile<CR>
  nmap <silent> <leader>a :TestSuite<CR>
  nmap <silent> <leader>g :TestVisit<CR>

  nmap <silent> <CR> :TestLast<CR>
