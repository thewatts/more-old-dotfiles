"= Interaction==================================================================

  set ttyfast                  " improve screen refresh for terminal vim
  set lazyredraw               " don't redraw while executing macros. async window title update

  set scrolloff=3              " start scrolling 3 lines from bottom
  set sidescrolloff=6          " start scrolling 6 lines from right
  let loaded_match_paren = 1   " highlight matching parens

  set mouse=a                  " allow mouse usage
  set clipboard=unnamed        " set default yank register to machine clipboard

  set nofoldenable             " disable folding

  set splitright               " vsplit splits to right side
  set splitbelow               " split splits to bottom

  set noswapfile               " don't create swap files
  set autowrite                " write the old file out when switching between files

  " auto strip whitespace on save
  autocmd BufWritePre * :%s/\s\+$//e

  " disable F1 help, due to me hitting it when going for ESC
  nmap <F1> <nop>

  " if has('nvim')
  "   nmap <BS> <C-W>h
  " endif

"= Keys ========================================================================

  let mapleader = ' '                       " set <Leader> as <Space>
  set backspace=indent,eol,start            " make backspace behave as expected

  " easy splits and switches over (\v)
  nnoremap <leader>v <C-w>v
  nnoremap <leader>h <C-w>s<C-w><C-w>
  nnoremap <leader>q :vsplit<cr> :term<cr>

  " map escape key to jj -- much faster, comments above b/c of Vim's interpretation of them jumping my cursor
  imap jj <esc>

  " disable line joining b/c of my fingers
  nnoremap <S-j> <Nop>

  " search navigation
  nnoremap <Space>] :cn<cr>
  nnoremap <Space>[ :cp<cr>

  " kill the trailing whitespace
  nnoremap <leader>rtw :%s/\s\+$//e<CR>

  " toggle Paste mode, comments above b/c of Vim's interpretation of them jumping my cursor
  nnoremap <F6> :set paste!<cr>
  " toggle No Highlight mode, comments above b/c of Vim's interpretation of them jumping my cursor
  nnoremap <F7> :noh<cr>

  " quick switch file
  nnoremap <leader><leader> <c-^>

  " if we have it, use silver-searcher for ack
  if executable("ag")
    let g:ackprg = 'ag --vimgrep'
  end
