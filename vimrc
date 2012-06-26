call pathogen#infect()
call pathogen#helptags()

" Tabs as spaces
" See http://vim.wikia.com/wiki/Indenting_source_code
"set expandtab
"set shiftwidth=4
"set softtabstop=4
set ts=4 sts=4 sw=4 expandtab
autocmd FileType ruby setlocal ts=2 sw=2 sts=2 et


set number

if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
  " ...
endif

" Enable syntax highlighting. Can also be done manually with :syntax on
syntax on

set pastetoggle=<F2>
set hidden

let g:netrw_liststyle=3 " Use tree view in netrw file explorer
let g:netrw_browse_split=4 " when browsing, <cr> will open the file in previous window.

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Path for finding files
set path=.,**

" Make a shortcut for opening :NERDTree with :NE
:command NE NERDTree
:command NEF NERDTreeFind
