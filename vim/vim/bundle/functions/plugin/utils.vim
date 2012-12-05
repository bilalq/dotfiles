"FocusMode"
function! ToggleFocusMode()
  if (&foldcolumn != 12)
    set laststatus=0
    set numberwidth=10
    set foldcolumn=12
    "set noruler
    hi FoldColumn ctermbg=none
    hi LineNr ctermfg=8 ctermbg=none
    hi NonText ctermfg=8
  else
    set laststatus=2
    set numberwidth=4
    set foldcolumn=0
    "set ruler
    execute 'colorscheme ' . g:colors_name
  endif
endfunc
nnoremap <F1> :call ToggleFocusMode()<cr>


"Show syntax highlighting groups for word under cursor"
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
nnoremap <C-S-N> :call <SID>SynStack()<CR>


"Function highlight anything past the 80th column"
function! HighlightOver()
  highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
  match OverLength /\%81v.\+/
endfunc


"Turn directional quotes into not-directional quotes"
function! DecodeQuotes()
  execute ":%s/‘\|’/'/g"
  execute ':%s/“\|”/"/g'
endfunc
