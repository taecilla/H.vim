if exists('s:vertical_help_loaded')
	finish
endif
let s:vertical_help_loaded = 1

command! -nargs=? -bang -complete=help H
	\ if <bang>1 |
		\ call vertical_help#vertical_help(<q-args>) |
	\ else |
		\ help <args> | only |
	\ endif
