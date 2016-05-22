" --------------------------------------------
"             NeoVim Configuration
"
"             Author: Hugo Duthil
" --------------------------------------------

call plug#begin('$HOME/.config/nvim/plugged')

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
Plug 'junegunn/fzf', { 'dir': '$HOME/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Autocomplete
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'zchee/deoplete-jedi'


call plug#end()

nnoremap <C-N> :bnext<CR>
nnoremap <C-B> :bprev<CR>

set hidden " Leave hidden buffers open
set history=100 " Remembers the 100 last commands
set number " Line numbers
set autoread " reload files when changed

" Navigate between windows
nnoremap <C-h> <C-w><Left>
nnoremap <C-l> <C-w><Right>
nnoremap <C-j> <C-w><Down>
nnoremap <C-k> <C-w><Up>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

" Move through words/windows
nnoremap <S-h> <S-Left>
nnoremap <S-l> <S-Right>
nnoremap <S-j> <S-Down>
nnoremap <S-k> <S-Up>


" Vim-airlines
let g:airline_powerline_fonts = 1
let g:airline_theme='base16color'
let g:airline#extensions#tabline#enabled = 1

" Base16 vim theme
let base16colorspace=256
colorscheme base16-default
set background=dark

" Nerdtree
nmap <C-d> :NERDTreeToggle<CR>
let g:WebDevIconsUnicodeGlyphDoubleWidth = 0
let g:DevIconsEnableFoldersOpenClose = 1

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#151515')

" FZF
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

" Deoplete
let g:deoplete#enable_at_startup = 1
