call plug#begin()
	Plug 'itchyny/lightline.vim'"
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'tpope/vim-commentary'
	Plug 'NLKNguyen/papercolor-theme'
	Plug 'tpope/vim-surround'
	Plug 'pappasam/vim-filetype-formatter'					
	Plug 'puremourning/vimspector'
	Plug 'honza/vim-snippets'

" todo
	Plug 'vuciv/vim-bujo'

" md
	Plug 'godlygeek/tabular'
	Plug 'preservim/vim-markdown'
	Plug 'tenxsoydev/vim-markdown-checkswitch'

" uml
	Plug 'scrooloose/vim-slumlord'
	Plug 'aklt/plantuml-syntax'

" ollama
	Plug 'gergap/vim-ollama'
call plug#end()

source ~/.vim/coc.vim

" bujo
	if exists(':Todo')
		nmap <C-S> <Plug>BujoAddnormal
		imap <C-S> <Plug>BujoAddinsert
		nmap <C-Q> <Plug>BujoChecknormal
		imap <C-Q> <Plug>BujoCheckinsert
	endif


let g:vimspector_enable_mappings = 'HUMAN'

	
" Markdown
	" Default mapping <Alt-c>. For those who are familiar with Codiums 'Markdown All in One' plugin 
	" (can be disabled with `let g:md_checkswitch_default_mappings_off=1`)
	let g:md_checkswitch_default_mappings_off=1
	nnoremap <silent> <leader>c :CheckSwitch<cr>

" Ollama
	let g:ollama_model = 'deepseek-coder-v2'
	let g:ollama_chat_model = 'deepseek-coder-v2'
	let g:ollama_timeout = 100
	let g:ollama_enabled = 0
	let g:ollama_original_tab_mapping = maparg('<C-Tab>', 'i', 0, 1)
"
let g:PaperColor_Theme_Options = {
	\   'theme': {
	\     'default.dark': {
	\       'allow_bold': 1,
	\       'allow_italic': 1
	\     },
	\     'default.light': {
	\       'allow_bold': 1,
	\       'allow_italic': 1
	\     }
	\   }
	\ }

colorscheme PaperColor
let g:lightline = {'colorscheme': 'PaperColor'}
