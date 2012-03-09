"Basic settings
set nocompatible
syntax on
set backspace=indent,eol,start
set history=300
set hlsearch
set ruler
set viminfo='20,\"50
set nocompatible
set tabstop=2
set shiftwidth=2
set expandtab
set showmatch
set virtualedit=onemore
set ignorecase
set smartcase
set number                     
set autoindent
set smartindent
set pastetoggle=<F2>
set mouse=a
:filetype plugin on
:filetype indent on
let &t_Co=256
colorscheme jellybeans

"Convenience mappings
inoremap jj <Esc>`^
inoremap JJ <Esc>`^
cnoremap w!! %!sudo tee > /dev/null %

"Reasonable line movement
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"Window movement mappings
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

"Leader Mappings
nnoremap <Leader>l :noh<CR> 
nnoremap <Leader>a gt
noremap <Leader>n :NERDTreeToggle<CR>
noremap <Leader>D :NERDTreeFind<CR>
noremap <Leader>v :ConqueTermVSplit<Space>bash<cr>
noremap <Leader>b :ConqueTermSplit<Space>bash<cr>

"Tab management
nnoremap ,t <Esc>:tabnew<CR>

"Shift-tab reverse-indenting
nnoremap <S-Tab> <<
inoremap <S-Tab> <Esc><<i

"Filetype specific settings
au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim 
au FileType make setlocal noexpandtab

"NERDTree settings
map nt :NERDTree .<CR>
let NERDTreeIgnore = ['\.pyc$', '\~$', '\.rbc$']
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

"Latex settings
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
