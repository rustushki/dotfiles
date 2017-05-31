" Automatically read when a file has changed.  Do so on cursor movement - and
" only if the current buffer has no unsaved changes.
set autoread
aug checktime
	au!
	if !has("gui_running")
		"silent! necessary otherwise throws errors when using command
		"line window.
		au BufEnter        * silent! checktime
		au CursorHold      * silent! checktime
		au CursorHoldI     * silent! checktime
		au CursorMoved     * silent! checktime
		au CursorMovedI    * silent! checktime
	endif
aug END

" Automatically write on a variety of signifier.  Primarily on ! or make.
set autowrite
