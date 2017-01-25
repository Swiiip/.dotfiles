call plug#begin("~/.local/share/nvim/plugged")

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
 
" Color schemes
Plug 'chriskempson/base16-vim'                                " Base16 theme
Plug 'tpope/vim-surround'                                     " Surround
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Deoplete
Plug 'jiangmiao/auto-pairs'                                   " Autopairs

" Initialize plugin system
call plug#end()
           
" ---------------------------------
"              Options
" ---------------------------------
language en_US
colorscheme base16-default-dark

set termguicolors     	" Enable true colors
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines. set textwidth=0
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.
set modeline            " Enable modeline.
set cursorline          " Highlight cursor line

set noerrorbells        " No beeps.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.<Paste>

set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" ---------------------------------
"             Variables
" ---------------------------------
let $FZF_DEFAULT_COMMAND = 'ag --hidden --depth 10 --ignore .git -g ""'

" ---------------------------------
"               Maps
" ---------------------------------
inoremap kj <ESC>
inoremap <C-Space> <Right>
" TODO: write fzf commands with @, # and C-S-p
nnoremap <silent> <C-p> :FZF -m<cr>
nnoremap <silent> <Esc> :noh<CR>

" Add lines in normal mode
nnoremap <S-j> m`o<Esc>``
nnoremap <S-k> m`O<Esc>``

" Add spaces in normal mode
nnoremap <S-h> i<Space><Esc>l
nnoremap <S-l> a<Space><Esc>h

" Window navigation
nnoremap <BS> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j

" Commands
command! Vimrc :vsp ~/.config/nvim/init.vim

" Netrw ---------------------- {{{
let g:netrw_liststyle = 3 		                                    					  " Set netrw display style
let g:netrw_banner = 0 								                                      " Remove the top banner from netrw
let g:netrw_browse_split = 4 							                                  " Open file in previous window
let g:netrw_winsize = 20 							                                      " Netrw window size
nnoremap <silent> <C-S-e> :Lexplore<CR>
" }}}

" Deoplete ---------------------- {{{
call deoplete#enable()
let g:deoplete#auto_complete_delay=50
" Use tab to navigate through completions
inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"  }}}

" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
