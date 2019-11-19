if exists('s:vertical_help_loaded')
	finish
endif
let s:vertical_help_loaded = 1

command! -nargs=? -complete=help H call vertical_help#vertical_help(<q-args>)
