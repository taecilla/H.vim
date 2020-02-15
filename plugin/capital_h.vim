if exists('s:capital_h_loaded')
	finish
endif
let s:capital_h_loaded = 1

command! -nargs=? -bang -complete=help H
	\ if <bang>1 | call capital_h#capital_h(<q-args>) |
	\ else | call capital_h#on_current_window(<q-args>) |
	\ endif
