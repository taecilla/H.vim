if exists('g:H_window_width')
	let s:window_width = g:H_window_width
else
	let s:window_width = 79
endif

function! H#H(pattern)
	execute "vertical help " . a:pattern
	if winwidth (winnr()) != s:window_width
		execute "vertical resize " . s:window_width
	endif
endfunction
