" sets and lets

" Default Tab Configuration
set ts=4 sts=4 sw=4 ai

" Various gui sets
set number
set modeline
set hlsearch
set mouse=a
set guifont=Monospace\ 9
set guioptions=agim    " Fixes annoying glitches in gvim
set nowrap
set wildmenu
set wildignore=*.o,*.class,*.git,*bin,*gen
set hidden             " preserves undo tree even on buffer unloads.
set t_Co=256           " Add better color to vim in terminal mode.  Best thing EVER.
set noerrorbells
set vb t_vb=
set laststatus=2
set backspace=2

" Do not store swp files in the CWD.
set directory=/tmp

" NetRW and NERDTree options.
let g:netrw_hide=1
let g:netrw_list_hide='^\.[^.].,^\.\/'
let NERDTreeIgnore=['\.o', '\~$','\.pyc']

" CtrlP
let g:ctrlp_working_path_mode = 'w'

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$',
  \ 'file': '\.class$\|\.so$\|\.exe$\|\.html$\|\.jar$\|\.png$\|\.gif$'
  \ }

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'

" Signify
let g:signify_update_on_bufenter = 1

" Status Line
set statusline=%F       " Full File Path
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, " file encoding
set statusline+=%{&ff}] " file format
set statusline+=%h      " help file flag
set statusline+=%m      " modified flag
set statusline+=%r      " read only flag
set statusline+=%y      " filetype
set statusline+=%=      " left/right separator
set statusline+=%c,     " cursor column
set statusline+=%l/%L   " cursor line/total lines
set statusline+=\ %P    " percent through file
