"- Theme =======================================================================

  set background=dark
  colorscheme nord

"- Nord ========================================================================

  highlight rubyInstanceVariable guifg=#a3be8c

"- Italics =====================================================================

  " From https://www.reddit.com/r/vim/comments/24g8r8/italics_in_terminal_vim_and_tmux/
  " Step #4
  set t_ZH=[3m
  set t_ZR=[23m

  highlight Comment gui=italic
  highlight Comment cterm=italic

  " Press F3 while the cursor is over an attribute - it'll list out the
  " attribute name and the color for highlight adjustments
  map <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
