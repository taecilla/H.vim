function! capital_h#capital_h(pattern)
	execute "vertical help" a:pattern
endfunction

function! capital_h#on_current_window(pattern)
	view $VIMRUNTIME/doc/help.txt
	setlocal filetype=help
	setlocal buftype=help
	setlocal nomodifiable
	silent execute "keepjumps help" a:pattern
endfunction
