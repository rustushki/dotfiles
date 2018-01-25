" Initialize junegunn's plugin system
set nocompatible
set runtimepath+=/home/russa/Config/vim
call plug#begin('~/.vim/bundle')

" Plugins
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/a.vim', {'for': 'cpp'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-commentary'

" Fish Shell Highlighting
Plug 'dag/vim-fish'

" Color Schemes Bundles
Plug 'vim-scripts/xoria256.vim'
Plug 'nanotech/jellybeans.vim'

" Syntax Schemes
Plug 'martinda/Jenkinsfile-vim-syntax'

call plug#end()
