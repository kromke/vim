" Tabularize
	if !exists(':Tabularize')
		finish " Give up here; the Tabular plugin musn't have been loaded
	endif

	AddTabularPipeline! remove_leading_spaces /^ /
				  \ map(a:lines, "substitute(v:val, '^ *', '', '')")

    nnoremap <silent> <leader>t :TableFormat<CR>:Tabularize remove_leading_spaces<CR>
	inoremap <Bar>   <Bar><Esc> :TableFormat<CR>:Tabularize remove_leading_spaces<CR>
