" 01110111 01100001 01110100 01110100 01110011
" ============================================

let $NVIM = $HOME . "/.dotfiles/config/nvim"

set nocompatible
set encoding=utf-8  " Fix special character encoding

"= Plug.vim ====================================================================

  " A minimalist Vim plugin manager.
  " See https://github.com/junegunn/vim-plug for more information

call plug#begin()

  " Vim plugin for the Perl module / CLI script 'ack'
  Plug 'mileszs/ack.vim'
  " :cherry_blossom: A command-line fuzzy finder
  Plug 'junegunn/fzf',
    \ { 'dir': '~/.fzf', 'do': './install --bin' }
  " fzf :heart: vim
  Plug 'junegunn/fzf.vim'
  " Vim and Neovim plugin to reveal the commit messages under the cursor
  Plug 'rhysd/git-messenger.vim'
  " A vim plugin to display the indention levels with thin vertical lines
  Plug 'Yggdroot/indentLine'
  " A light and configurable statusline/tabline plugin for Vim
  Plug 'itchyny/lightline.vim'
  " A tree explorer plugin for vim.
  Plug 'preservim/nerdtree'
  " Vim client for TabNine https://tabnine.com/
  Plug 'codota/tabnine-vim'
  " Vim script for text filtering and alignment
  Plug 'godlygeek/tabular'
  " commentary.vim: comment stuff out
  Plug 'tpope/vim-commentary'
  " Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more
  Plug 'ryanoasis/vim-devicons'
  " endwise.vim: wisely add "end" in ruby, endfunction/endif/more in vim script, etc
  Plug 'tpope/vim-endwise'
  " Equinusocio's material theme for vim
  Plug 'chuling/vim-equinusocio-material'
  " fugitive.vim: A Git wrapper so awesome, it should be illegal
  Plug 'tpope/vim-fugitive'
  " A Vim plugin which shows a git diff in the sign column and stages/previews/undoes hunks and partial hunks.
  Plug 'airblade/vim-gitgutter'
  " :flashlight: [Vim script] JSX and TSX syntax pretty highlighting for vim.
  Plug 'MaxMEllon/vim-jsx-pretty'
  " True Sublime Text style multiple selections for Vim
  Plug 'terryma/vim-multiple-cursors'
  " A solid language pack for Vim.
  Plug 'sheerun/vim-polyglot'
  " vim plugin for highliting code in ruby here document
  Plug 'joker1007/vim-ruby-heredoc-syntax'
  " surround.vim: quoting/parenthesizing made simple
  Plug 'tpope/vim-surround'
  " Run your tests at the speed of thought
  Plug 'janko/vim-test'
  " unimpaired.vim: Pairs of handy bracket mappings Plug 'tpope/vim-unimpaired' Seamless navigation between tmux panes and vim splits
  Plug 'christoomey/vim-tmux-navigator'
  " unimpaired.vim: Pairs of handy bracket mappings
  Plug 'tpope/vim-unimpaired'

call plug#end()

source $NVIM/appearance.vim
source $NVIM/interaction.vim
source $NVIM/indent_guides.vim
source $NVIM/nerdtree.vim
source $NVIM/theme.vim
source $NVIM/fzf.vim

source $NVIM/elixir.vim
source $NVIM/git.vim
source $NVIM/haml.vim
source $NVIM/html.vim
source $NVIM/javascript.vim
source $NVIM/json.vim
source $NVIM/python.vim
source $NVIM/ruby.vim
source $NVIM/testing.vim
