if exists('s:H_loaded')
	finish
endif
let s:H_loaded = 1

command! -nargs=? -complete=help H call H#H(<q-args>)
