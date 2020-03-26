"= Appearance ==================================================================

  " For getting italics and true color support with Tmux
  " https://medium.com/@dubistkomisch/how-to-actually-get-italics-and-true-colour-to-work-in-iterm-tmux-vim-9ebe55ebc2be
  if has('termguicolors')  " set true colors
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
  endif

  syntax on                    " turn on syntax highlighting

  filetype plugin on           " enable loading plugins for filetypes
  filetype indent on           " enable loading 'indent files' for filetypes

  set synmaxcol=270            " no syntax highlighting for lines longer than 270 cols
  syntax sync minlines=256

  set laststatus=2             " show status bar

  set number                   " display line numbers
  set relativenumber           " show relative line numbers
  set visualbell               " use visual bell

  set cursorline               " show cursor line
  set ruler                    " cursor position in the lower right corner
  set colorcolumn=80,100       " color columns 80 and 100 for visual help

  match ErrorMsg '\s\+$'       " highlight trailing whitespace

  au VimResized * :wincmd =    " resize splits when window is resized

"= Wrapping ====================================================================

  set nowrap                   " don't softwrap text
  set linebreak
  set formatoptions-=t         " don't automatically hardwrap text (use 'gq' to reflow text)
  set wrapmargin=0             " don't wrap based on terminal size

"= Indentation =================================================================

  set autoindent               " indent next line to same level as current line
  set smartindent              "   ↑ but do it smartly
  set smarttab                 " <Tab> in front of a line inserts 'shiftwidth' blanks
  set shiftwidth=2             "   ↑ use 2 blanks for above
  set tabstop=2                " display a <Tab> as 2 spaces
  set softtabstop=2            " use 2 spaces for a <Tab>
  set expandtab

"= Searching ===================================================================

  set hlsearch                 " highlight searching
  set ignorecase               " case insensitive search
  set smartcase                " case insensitive search
  set incsearch                " incremental search
