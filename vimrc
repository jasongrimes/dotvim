"
" Tabs as spaces
" See http://vim.wikia.com/wiki/Indenting_source_code
set expandtab
set shiftwidth=4
set softtabstop=4

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

