if exists('g:default_toggle_wrap_map_key_user')
	let g:default_toggle_wrap_map_key = g:default_toggle_wrap_map_key_user
else
	let g:default_toggle_wrap_map_key = "<leader>w"
endif

""" Function to toogle Wrap
function ToggleWp()
	if &l:wrap == "1"
		set nowrap
		echo "Wrap off"
	else
		set wrap
		echo "Wrap on"
	endif
endfunction

""" Setting the command for easy refrence.
command! -nargs=0 ToggleWrap :call ToggleWp()

""" Default key maping.
execute 'nnoremap '.g:default_toggle_wrap_map_key.' :ToggleWrap <cr>'
