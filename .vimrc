""" For Go """
" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
if exists("g:did_load_filetypes")
  filetype off
  filetype plugin indent off
endif
set runtimepath+=/usr/local/go/misc/vim " replace $GOROOT with the output of: go env GOROOT
filetype plugin indent on
syntax on

autocmd FileType go autocmd BufWritePre <buffer> Fmt

" make sure gnome-terminal advertises 256 colors
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

" add line numbers
set number
set pastetoggle=<F2>

set tabstop=4
set shiftwidth=4

" some silly stuff for escaping
set t_ZH=[3m
set t_ZR=[23m

set t_MD=[01m
set t_ME=[0m

" color scheme
colorscheme infimum
