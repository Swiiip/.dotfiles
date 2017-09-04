call plug#begin("~/.local/share/nvim/plugged")

" General purpose plugins
Plug 'chriskempson/base16-vim'                                 " Base16 theme
Plug 'tpope/vim-surround'                                      " Surround
Plug 'jiangmiao/auto-pairs'                                    " Autopairs
Plug 'scrooloose/nerdtree'                                     " NerdTree
Plug 'ntpeters/vim-better-whitespace'
Plug 'zirrostig/vim-schlepp'                                   " Block movements
"Plug 'w0rp/ale'                                               " Linter

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'

" CMake
Plug 'nickhutchinson/vim-cmake-syntax'

" Vimscript
Plug 'shougo/neco-vim'                                         " Completion

" Javascript
Plug 'pangloss/vim-javascript'                                 " General support
Plug 'jelera/vim-javascript-syntax'                            " Syntax highlighting

" Rust
"Plug 'rust-lang/rust.vim'                                     " General support of Rust
"Plug 'racer-rust/vim-racer'                                   " Completion source

" Typescript
Plug 'leafgarland/typescript-vim'

" Initialize plugin system
call plug#end()

" ---------------------------------
"              Options
" ---------------------------------

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
set noswapfile          " Don't use swapfiles

set noerrorbells        " No beeps.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)
set synmaxcol=400       " Maximum column in which to search for syntax items

set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.<Paste>

set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).
set hidden              " Allow hidden buffers

set pumheight=10        " Completion list height
set completeopt=menu,menuone,noinsert
set matchpairs+=<:>

hi LineNr guibg=bg
hi foldcolumn guibg=bg
hi VertSplit guibg=bg guifg=#fcfcfc


" ---------------------------------
"             Variables
" ---------------------------------
"
hi Cursor ctermfg=Green guibg=#00ff6a guifg=#000000
set guicursor=
            \n-v-c:block,
            \i-ci-ve:ver25-blinkwait700-blinkoff200-blinkon250,
            \o:hor50,
            \a:Cursor

" ---------------------------------
"               Maps
" ---------------------------------
inoremap <C-f> <Right>
inoremap <C-b> <Left>

" Don't jump to next search occurence
hi IncSearch guibg=#b2e6f7
hi Search guibg=#b2e6f7
nnoremap * *N
nnoremap # *N

nnoremap <silent> <esc> :noh<return>
nnoremap <C-s> :w<cr>
inoremap <C-v> <Esc>"+pi<Right>
inoremap <C-space> <C-x><C-o>
nnoremap U <c-r>

" Add lines in normal mode
nnoremap <S-j> m`o<Esc>``
nnoremap <S-k> m`O<Esc>``

" Add spaces in normal mode
nnoremap <S-h> i<Space><Esc>l
nnoremap <S-l> a<Space><Esc>h

" Swap lines/chars
nnoremap <M-h> Xp<Left>
nnoremap <M-l> xp
nnoremap <expr> <silent> <M-j> ":m" . eval(line(".")+1) . "\<CR>"
nnoremap <expr> <silent> <M-k> ":m" . eval(line(".")-2) . "\<CR>"

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <silent> <C-w> :q<cr>

" Search and replace globally
nnoremap sg :%sm/<C-r><C-w>//g<Left><Left>

" Do not show stupid q: window
map q: :q

" Custom commands --------------- {{{
if has("win32")
  "Windows options here
  command! Vimrc :e ~/AppData/Local/nvim/init.vim
else
  if has("unix")
    "Unix options here
    command! Vimrc :e ~/.config/nvim/init.vim
    command! BashProfile :e ~/.bash_profile
  endif
endif
" --- }}}

" Vim Whitespace --------------- {{{
autocmd BufEnter * EnableStripWhitespaceOnSave
" --- }}}

" Schlepp --------------- {{{
vmap <silent> <M-k> <Plug>SchleppUp
vmap <silent> <M-j> <Plug>SchleppDown
vmap <silent> <M-h> <Plug>SchleppLeft
vmap <silent> <M-l> <Plug>SchleppRight
" --- }}}

" Terminal --------------- {{{
tnoremap <ESC> <C-\><C-n>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
tnoremap <C-^> <C-\><C-n><C-^>
augroup terminal_buffer
    autocmd!
    autocmd BufEnter term://* startinsert
    autocmd TermOpen term://* cnoremap <buffer> bd bd!
    "    autocmd TermOpen term://* execute 'vertical resize 60'
    "    autocmd TermOpen term://* execute 'set wfw'
augroup END
" --- }}}

" NerdTree ---------------------- {{{
nnoremap <silent> <C-e> :NERDTreeToggle<CR>
augroup filetype_nerdtree
    autocmd!
    autocmd FileType nerdtree nnoremap <buffer> <silent> <esc> :q<cr>
    autocmd DirChanged * NERDTreeCWD
augroup END
" --- }}}

" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType vim nnoremap <buffer> <silent> <C-s> :w<cr>:so%<cr>
augroup END
" ---  }}}

" Grep --------------- {{{
command! -nargs=+ NewGrep execute 'silent grep! <args>'
nnoremap <silent> gr :NewGrep <c-r><c-w><cr>:cwindow 22<cr>
if executable("ag")
    set grepprg=ag "\ --nogroup\ --ignore-case\ --no-color
    set grepformat^=%f:%l:%c:%m
endif
" --- }}}

" QuickFix --------------- {{{
augroup OpenQuickFixAuto
    autocmd!
    " automatically open the location/quickfix window after :make, :grep,
    " :lvimgrep and friends if there are valid locations/errors
    autocmd QuickFixCmdPost [^l]* cwindow 22
    autocmd QuickFixCmdPost * cwindow 22
    autocmd FileType qf nnoremap <buffer> <silent> <esc> :q<cr>
    autocmd FileType qf nnoremap <buffer> <silent> o <cr>
    autocmd FileType qf nnoremap <buffer> <silent> <SPACE> <cr>zz:copen 22<cr>
    autocmd VimEnter * cwindow 22
augroup END
" --- }}}

" Undoubled completion --------------- {{{

augroup Undouble_Completion
    autocmd!
    autocmd CompleteDone * call Undouble_Completion()
augroup END

function! Undouble_Completion()
    let col = getpos('.')[2]
    let line = getline('.')
    call setline('.', substitute(line, '\(\.\?\k\+\)\%'.col.'c\zs\1','',''))
endfunction

" --- }}}

" FZF --------------- {{{

let $FZF_DEFAULT_COMMAND = 'ag --hidden --depth 10 -S -g ""'

if !has("win32")
  nnoremap <silent> <C-p> :Files<cr>
  nnoremap <silent> <C-b> :Buffers<cr>
  nnoremap <silent> <C-a> :Ag<cr>

endif

augroup FZF_term
    autocmd!
    autocmd TermOpen fzf tnoremap <silent> <Esc> <C-\><C-n>:bd!<Cr>
augroup END

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

" --- }}}

