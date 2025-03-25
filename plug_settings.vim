call plug#begin()
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	Plug 'tpope/vim-commentary'

	Plug 'tpope/vim-surround'
	
	Plug 'pappasam/vim-filetype-formatter'					

	Plug 'godlygeek/tabular'
	
	Plug 'preservim/vim-markdown'

	Plug 'bullets-vim/bullets.vim'

	Plug 'tpope/vim-speeddating'
	
" langs
	" Plug 'puremourning/vimspector'
	" Plug 'honza/vim-snippets'
	" Plug 'neoclide/coc.nvim', {'branch': 'release'}


" AI
	Plug 'gergap/vim-ollama'

" theme
	Plug 'itchyny/lightline.vim'"
	Plug 'NLKNguyen/papercolor-theme'
	Plug 'rakr/vim-one'

" NERDTree
	Plug 'preservim/nerdtree'
	Plug 'ryanoasis/vim-devicons'

call plug#end()

" coc
" source ~/.vim/coc.vim
" let $NVIM_COC_LOG_LEVEL='error'

" vimspector
let g:vimspector_enable_mappings = 'HUMAN'

	
" Markdown
	" Default mapping <Alt-c>. For those who are familiar with Codiums 'Markdown All in One' plugin 
	" (can be disabled with `let g:md_checkswitch_default_mappings_off=1`)
	map <Esc>c <A-c>
	" let g:md_checkswitch_default_mappings_off=1
	" nnoremap <silent> <m-c> :CheckSwitch<cr>
set foldlevel=99

" Ollama
let g:ollama_original_tab_mapping = maparg('<C-Tab>', 'i', 0, 1)
let g:ollama_chat_timeout = 100
let g:ollama_enabled = 0
"
"
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

colorscheme one
let g:lightline = {'colorscheme': 'one'}
let g:one_allow_italics = 1

set termguicolors
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:vim_markdown_folding_disabled = 1

let g:bullets_checkbox_markers = " ¼½¾X"

