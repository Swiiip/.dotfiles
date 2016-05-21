call plug#begin('~/.config/nvim/plugged')

" Simple standard vim conf
Plug 'tpope/vim-sensible'

" Themes
Plug 'vim-airline/vim-airline' " install vim-airline
Plug 'vim-airline/vim-airline-themes' " themes for vim-airlines
Plug 'chriskempson/base16-vim' " theme for vim
Plug 'ryanoasis/vim-devicons' " fancy icons

" Syntax Helpers
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'

" Navigation
Plug 'scrooloose/nerdtree'

" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()
