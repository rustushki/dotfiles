au FileChangedShell * echo "Warning: File changed on disk"

syntax on

" Set listchars to make whitespace visible.  Use 'set list' to see the
" whitespace.
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set nolist

if &diff
	" Set vimdiff theme.
	colorscheme jellybeans
	syntax off
	set background=dark

	" Skip the swap file warning if we're in diff mode.
	set shortmess+=A

	" Nice key combo to exit diffmode
	map <bar><bar> :qa!<CR>

else
	set background=dark
	colorscheme jellybeans

	" Combo which will close all vim buffers, but not if buffer unsaved
	map <bar><bar> :qa<CR>
endif
