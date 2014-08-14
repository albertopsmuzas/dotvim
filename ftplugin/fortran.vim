" FORTRAN folding options
set foldmethod=syntax
let fortran_fold=1
let fortran_fold_conditionals=1
" FORTRAN tabs and free source depending on extension
let s:extfname = expand("%:e")
if s:extfname ==? "f90"
	unlet! fortran_fixed_source
	let fortran_free_source=1
	let fotran_have_tabs=1
else
	let fortran_fixed_source=1
	unlet! fortran_free_source
	unlet! fortran_have_tabs
endif
