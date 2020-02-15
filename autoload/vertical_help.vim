function! vertical_help#vertical_help(pattern)
	execute "vertical help" a:pattern
endfunction

function! vertical_help#on_current_window(pattern)
	view $VIMRUNTIME/doc/help.txt
	setlocal filetype=help
	setlocal buftype=help
	setlocal nomodifiable
	silent execute "keepjumps help" a:pattern
endfunction
