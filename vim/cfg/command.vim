" Special Commands
command! Normaltab set autoindent tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

" Go to Config Directory.
command! Gsc   :cd ~/Config

" Drag 'n Drop inside Terminal.
" Type :e then drag a file in to edit it in Terminal Vim.
command! -nargs=? -bang -bar E :execute "e<bang> ".fnameescape(system("echo -n ".<q-args>))

" CD Up N Directories.
command! -nargs=? Cdu call Cdu(<args>)
func! Cdu(...)

	" If there are arguments to the function,
	if a:0 > 0

		" Use the first arg as i
		let l:i = a:1
	else

		" Let i be 1
		let l:i = 1
	end

	" cd up i times
	while l:i > 0
		cd ..
		let l:i -= 1
	endwhile
	pwd
endfunc
