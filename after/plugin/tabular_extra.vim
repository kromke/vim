" Tabularize
	if !exists(':Tabularize')
		finish " Give up here; the Tabular plugin musn't have been loaded
	endif

	AddTabularPipeline! remove_leading_spaces /^ /
				  \ map(a:lines, "substitute(v:val, '^ *', '', '')")

	command Tf execute ':TableFormat' | :Tabularize remove_leading_spaces
