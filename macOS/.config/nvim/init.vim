call plug#begin("~/.local/share/nvim/plugged")

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Color schemes
Plug 'felixhummel/setcolors.vim' " Easily switch between colorschemes
Plug 'flazz/vim-colorschemes'    " Colorschemes pack
Plug 'chriskempson/base16-vim'   " Base16 theme

" Initialize plugin system
call plug#end()

" Options
language en_US
colorscheme CandyPaper
set termguicolors     	" Enable true colors
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines. set textwidth=0
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.
set modeline            " Enable modeline.

set noerrorbells        " No beeps.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.<Paste>

set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" Variables
let g:netrw_liststyle = 3 		                                    					" Set netrw display style
let g:netrw_banner = 0 								                                      " Remove the top banner from netrw
let g:netrw_browse_split = 4 							                                  " Open file in previous window
let g:netrw_winsize = 20 							                                      " Netrw window size
let $FZF_DEFAULT_COMMAND = 'ag --hidden --depth 10 --ignore .git -l -g ""' 	" Allow fzf to search in hidden folders

" Maps
inoremap kj <ESC>
nnoremap <silent> <C-p> :FZF -m<cr>
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
nnoremap <S-j> m`o<Esc>``
nnoremap <S-k> m`O<Esc>``
nnoremap <S-h> m`i<Space><Esc>``
nnoremap <S-l> m`i<Space><Esc>``
