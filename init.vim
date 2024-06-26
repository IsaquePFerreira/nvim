" --------
" Plugins
" --------
call plug#begin()
 Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
call plug#end() 

" --------
" Plugins
" --------

lua << EOF
require("nvim-treesitter.configs").setup({
	ensure_installed = {
 		"bash",
 		"c",
 		"javascript",
 		"lua",
 		"markdown",
         "python",
 		"vim",
 		"vimdoc",
 		"query",
 	},
 	highlight = {
 		enable = true,
 	},
 })
EOF

" --------
" Autocmds
" --------
" Disable auto commenting in a new line
autocmd Filetype * setlocal formatoptions-=c formatoptions-=r  formatoptions-=o
" If the current file type is HTML, set indentation to 2 spaces.
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab
" Terminal
autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
autocmd TermOpen * startinsert
autocmd BufLeave term://* stopinsert

" --------
" Spell
" --------
set nospell
set spelllang=pt_br,en

" --------
" Fyletype and syntax
" --------
filetype plugin on
filetype indent on
syntax on
colorscheme dracula
set termguicolors

" --------
" General
" --------
set title
set number
set cursorline
set textwidth=79
set guicursor=
set shiftwidth=4
set tabstop=4
set scrolloff=8
set nobackup
set nowritebackup
set noswapfile
set nowrap
set history=1000
set showmatch
set showtabline=2
set splitbelow splitright

" --------
" Search
" --------
set ignorecase
set smartcase

" --------
" More friendly message when you forget to save
" --------
set confirm
set foldmethod=marker
set fillchars=fold:\  

" --------
" Fold
" --------
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" --------
" Paths
" --------
set path+=**

" --------
" Undo
" --------
set undodir=~/.config/nvim/undodir
set undofile
set undoreload=10000

" --------
" File manager
" --------
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv = 1
let g:netrw_liststyle=3
let g:netrw_winsize=20
let g:netrw_keepdir=0
let g:netrw_showhide=1

" --------
" Auto Completion - Enable Omni complete features
" --------
set omnifunc=syntaxcomplete#Complete

" --------
" Enable Spelling Suggestions for Auto-Completion
" --------
set complete+=kspell
set shortmess+=c
set completeopt=menu,menuone,longest,noinsert

" --------
" KEYBINDS
" --------

" --------
" Emmet
" --------
let g:user_emmet_leader_key=','

" --------
" Leader
" --------
let mapleader=","

" --------
" Minimalist-Tab Complete
" --------
inoremap <expr> <Tab> TabComplete()
fun! TabComplete()
	if getline('.')[col('.') - 2] =~ '\K' || pumvisible()
		return "\<C-N>"
	else
		return "\<Tab>"
	endif
endfun

" --------
" Minimalist-Autocomplete
" --------
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
autocmd InsertCharPre * call AutoComplete()
fun! AutoComplete()
	if v:char =~ '\K'
				\ && getline('.')[col('.') - 4] !~ '\K'
				\ && getline('.')[col('.') - 3] =~ '\K'
				\ && getline('.')[col('.') - 2] =~ '\K' " last char
				\ && getline('.')[col('.') - 1] !~ '\K'

		call feedkeys("\<C-N>", 'n')
	end
endfun

" --------
" Toggle Spell Check
" --------
map <f2> :set spell!<cr>

" --------
" Insert mode quickly.
" --------
inoremap jj <esc>

" --------
" Format a paragraph into lines
" --------
map Q gq<CR>

" --------
" Navigation
" --------
map j gj
map k gk

" --------
" Select all
" --------
nnoremap <leader>a ggVG

" --------
" File explorer
" --------
map <leader>e :Lex<cr>

" --------
" Terminal
" --------
map <f4> :sp<cr>:term<cr>
tnoremap <f4> exit<cr>
tnoremap <esc> <c-\><c-n>

" --------
" Split and V-Split
" --------
map <leader>y :split<cr>
map <leader>x :vsplit<cr>

" --------
" Search files
" --------
nnoremap <c-p> :FZF<cr>

" --------
" Buffers
" --------
nnoremap ]b :bn<cr>
nnoremap [b :bp<cr>
nnoremap <leader>c :bd<cr>

" --------
" Tabs
" --------
nnoremap <leader>t :tabnew<cr>
nnoremap ]t gt
nnoremap [t gT
nnoremap <leader>n :tabedit<space>

" --------
" Replace all occurrences
" --------
nnoremap <leader>r :%s/\<<c-r><c-w>\>//g<left><left>

" --------
" Move lines
" --------
vmap J :m '>+1<cr>gv=gv
vmap K :m '>-2<cr>gv=gv

" --------
" Remap V-Block map
" --------
nnoremap <leader>v <c-v>

" --------
" Copy and Past
" --------
map <c-v> "+P
vnoremap <c-c> "*y :let @+=@*<cr>

" --------
" Close pairs
" --------
inoremap '' ''<left>
inoremap "" ""<left>
inoremap () ()<left>
inoremap <> <><left>
inoremap [] []<left>
inoremap {} {}<left>
inoremap {<cr> {<cr><cr>}<c-o>k<c-t>
inoremap ({ ({  })<c-o>2h
inoremap (( ((  ))<c-o>2h
inoremap [[ [[  ]]<c-o>2h

vnoremap " c""<esc>P
vnoremap ' c''<esc>P
vnoremap ( c()<esc>P
vnoremap [ c[]<esc>P
vnoremap { c{}<esc>P
vnoremap ` c``<esc>P
vnoremap * c**<esc>P

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

