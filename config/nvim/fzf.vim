"- FZF =========================================================================
  set rtp+=/opt/homebrew/opt/fzf

  let g:fzf_colors =
  \ { 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'] }

  " [Buffers] Jump to the existing window if possible
  let g:fzf_buffers_jump = 1

  " Open FZF
  noremap <C-p> :Files<CR>

  " Always enable preview window on the right with 60% width
  let g:fzf_preview_window = 'right:60%'

  " Default fzf layout
  " - down / up / left / right
  let g:fzf_layout = { 'down': '~30%' }

  set wildignore+=*/tmp/*,*/bin/*,*/.git/*,*/node_modules/*,*/bower_components/*,*.so,*.swp,*.zip,*.gitkeep     " MacOSX/Linux
