function! neoformat#formatters#odin#enabled() abort
	return ['odinfmt']
endfunction

function! neoformat#formatters#odin#odinfmt() abort
	return {
	    \ 'exe': 'odinfmt',
	    \ 'args': ['-stdin'],
	    \ 'stdin': 1
	    \ }
endfunction
