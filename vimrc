"Basic settings"
set nocompatible
syntax on
set backspace=indent,eol,start
set wildignore+=*/tmp/*,*/build/*,*.so,*.swp,*.zip
set history=300
set hlsearch
set ruler
set viminfo='20,\"50
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
set laststatus=2
set mouse=a
set pastetoggle=<F2>
filetype plugin indent on
let &t_Co=256
call pathogen#infect()
colorscheme jellybeans

"Convenience mappings"
inoremap jj <Esc>`^
inoremap JJ <Esc>`^
cnoremap w!! %!sudo tee > /dev/null %

"Reasonable line movement"
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"Window movement mappings"
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

"Leader Mappings"
let mapleader=","
nnoremap <Leader>l :noh<CR> 
nnoremap <Leader>a gt
nnoremap <A :tabprevious<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>D :NERDTreeFind<CR>
nnoremap <Leader>v :ConqueTermVSplit<Space>bash<cr>
nnoremap <Leader>b :ConqueTermSplit<Space>bash<cr>
nnoremap <Leader>t <Esc>:tabnew<CR>
nnoremap <Leader>jb  :JekyllBuild<CR>
nnoremap <Leader>jn  :JekyllPost<CR>
nnoremap <Leader>jl  :JekyllList<CR>

"Shift-tab reverse-indenting"
nnoremap <S-Tab> <<
inoremap <S-Tab> <Esc><<i

"Filetype specific settings"
au Filetype html,xml,xsl source ~/.vim/bundle/closetag.vim/plugin/closetag.vim 
au FileType make setlocal noexpandtab

"NERDTree settings"
let NERDTreeIgnore = ['\.pyc$', '\~$', '\.rbc$']
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

"Jekyll settings"
let g:jekyll_path = "~/blog"
