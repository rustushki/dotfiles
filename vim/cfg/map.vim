" Force save the file in the current buffer.
inoremap <F1>  <C-C>:w!<CR>
 noremap <F1>  <C-C>:w!<CR>
inoremap <C-S> <C-C>:w!<CR>
 noremap <C-S> <C-C>:w!<CR>

" Open CtrlP's buffer management plugin.
 map <F3> :CtrlPBuffer<CR>

" Open Fuzzy Finder (FZF)
 map <C-P> :FZF<CR>

" Force quit the file in the current buffer. (discards changes)
 map <F4> :bdelete!<CR>
imap <F4> <ESC><F4>

" Isolate the current buffer.
 map <F6> :only<CR>

" Navigate CWD
 map <F7> <ESC>:e.<CR>

" Edit vimrc.
 map <F8> <ESC>:e ~/.vim<CR>

" Re-source the vimrc.
 map <F9> <ESC>:source ~/.vimrc<CR>

" Clear Highlighted Search Results.
 map <Space> :noh<CR>

" Replace the current window with an empty buffer.
 map <C-W>o <C-W>n<C-W><C-W><C-W>c

" Forgot to edit as root?  Np.  Type w!!
cmap w!! %!sudo tee > /dev/null %

" Suggested mapping for EasyAlign
vnoremap <silent> <Enter> :EasyAlign<cr>

noremap <Leader>p :pwd<CR>
noremap <Leader>a :A<CR>
noremap <Leader>on :on<CR> :tabo<CR>
noremap <Leader>e :e!<CR>
noremap <Leader>cc :cwindow<CR>:cc<CR><c-w>bz<CR><CR>
noremap <Leader>cn :cwindow<CR>:cn<CR><c-w>bz<CR><CR>
noremap <Leader>cp :cwindow<CR>:cp<CR><c-w>bz<CR><CR>
