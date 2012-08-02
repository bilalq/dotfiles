"Basic settings"
set nocompatible
syntax on
call pathogen#infect()
set backspace=indent,eol,start
set wildignore+=*/tmp/*,*/build/*,*.so,*.swp,*.zip
set virtualedit=onemore
set history=500
set number                     
set mouse=a
set pastetoggle=<F2>
set t_Co=256
colorscheme jellybeans
filetype plugin indent on

"Colorscheme toggling"
map <F8> :colorscheme jellybeans<CR>
map <F9> :colorscheme molokai<CR>
map <F10> :colorscheme autumn<CR>

"Search settings"
set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase
augroup hltoggle
  au!
  au InsertEnter * set nohlsearch
  au InsertLeave * set hlsearch
augroup end

"Indentation settings"
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smarttab

"Statusline settings"
set laststatus=2
let g:Powerline_symbols = 'unicode'

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
nnoremap <Leader>t <Esc>:tabnew<CR>
nnoremap <Leader>jb  :JekyllBuild<CR>
nnoremap <Leader>jn  :JekyllPost<CR>
nnoremap <Leader>jl  :JekyllList<CR>

"Shift-tab reverse-indenting"
nnoremap <S-Tab> <<
inoremap <S-Tab> <Esc><<i

"Get rid of annoying bell sound"
set noerrorbells visualbell t_vb=
au GUIEnter * set visualbell t_vb=

"Filetype specific settings"
augroup typeSpecific
  au!
  au Filetype html,xml,xsl source ~/.vim/bundle/closetag.vim/plugin/closetag.vim 
  au FileType make setlocal noexpandtab
augroup end

"NERDTree settings"
let NERDTreeIgnore = ['\.pyc$', '\~$', '\.rbc$']
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

"Jekyll settings"
let g:jekyll_path = "~/blog"

" Show syntax highlighting groups for word under cursor
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
nnoremap <C-S-N> :call <SID>SynStack()<CR>
