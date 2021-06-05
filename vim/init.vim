" ============================================================================
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'lilydjwg/colorizer'  
Plug 'vim-scripts/IndexedSearch'
Plug 'scrooloose/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/YankRing.vim'
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'
"Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()
" ==================================================================
" NERDTree ----------------------------- 
map <F3> :NERDTreeToggle<CR>
nmap ,t :NERDTreeFind<CR>
"autocmd VimEnter * NERDTree
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
let g:NERDTreeWinSize=20

" Airline ------------------------------
let g:airline_theme='transparent'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts=1
"let g:airline_symbols_ascii=1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty=''
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

set encoding=UTF-8
set t_Co=256
set laststatus=2

" Vim gitglutter ------------------------------
highlight GitGutterAdd    guifg=#a7da1e guibg=NONE gui=bold
highlight GitGutterChange guifg=#fbd428 guibg=NONE gui=bold
highlight GitGutterDelete guifg=#b30000 guibg=NONE gui=bold
set updatetime=500

" Vim sys highlight --------------------------
syn match minium /-{1}/ contained
autocmd VimEnter,BufRead,BufNewFile * syn match pVars /\([,(]\_s*\)\@<=\w\+/ 
"autocmd VimEnter,BufRead,BufNewFile * syn match pVars /\v\(\zs.*\ze\)/ contains=pKeyword,pParam
autocmd VimEnter,BufRead,BufNewFile * syn match COperator "[&|~><!*%+/=\^]" contains=minium

" Deoplate ----------------------------------
let g:deoplete#enable_at_startup = 1

" SQL syntax
let g:markdown_fenced_languages = ['sql']

"==================================================================
set termguicolors
syntax on 
syntax enable
colorscheme eli_firecode

"Tab indent
set autoindent noexpandtab tabstop=2 shiftwidth=2
autocmd FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2

filetype plugin on
filetype indent on
set ls=2 "always show status bar"
set incsearch "incremental search"
set hlsearch "highlighted search results"
set ignorecase
set smartcase  
set number
set mouse=a 
set scrolloff=5 

"No backup
set nobackup
set noswapfile
set nowritebackup

" tab navigation mappings
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm 
map tt :tabnew 
map ts :tab split<CR>
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

"map <C-S-Up> <C-w>h<C-w><C-S-Up>
"map <C-S-Up> <C-w>j<C-w><C-S-Up>
"map <C-S-Down> <C-w>l<C-w><C-S-Down>
"map <C-S-Down> <C-w>k<C-w><C-S-Down>

noremap <silent> <C-S>  :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>
map <F2> :x<CR>

" save as sudo
"ca w!! w !sudo tee "%"

" autocompletion of files and commands behaves like shell
set wildmode=list:longest
