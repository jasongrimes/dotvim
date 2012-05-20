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

