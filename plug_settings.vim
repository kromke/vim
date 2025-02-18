call plug#begin()
	Plug 'itchyny/lightline.vim'"
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
	Plug 'pappasam/vim-filetype-formatter'					
	Plug 'puremourning/vimspector'
	Plug 'honza/vim-snippets'
	Plug 'voldikss/vim-floaterm'
	Plug 'kchmck/vim-coffee-script'
	Plug 'slim-template/vim-slim'
	Plug 'tpope/vim-fugitive'

" NERDTree
	Plug 'preservim/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'

" AI
	Plug 'gergap/vim-ollama'

" theme
	Plug 'NLKNguyen/papercolor-theme'
	Plug 'rakr/vim-one'

" todo
	Plug 'vuciv/vim-bujo'

" md
	Plug 'godlygeek/tabular'
	Plug 'preservim/vim-markdown'
	Plug 'tenxsoydev/vim-markdown-checkswitch'

" uml
	Plug 'scrooloose/vim-slumlord'
	Plug 'aklt/plantuml-syntax'

call plug#end()

" coc
source ~/.vim/coc.vim
let $NVIM_COC_LOG_LEVEL='error'
let $NVIM_COC_LOG_FILE='~/.vim/coclog'

" vimspector
let g:vimspector_enable_mappings = 'HUMAN'

	
" Markdown
	" Default mapping <Alt-c>. For those who are familiar with Codiums 'Markdown All in One' plugin 
	" (can be disabled with `let g:md_checkswitch_default_mappings_off=1`)
	map <Esc>c <A-c>
	" let g:md_checkswitch_default_mappings_off=1
	" nnoremap <silent> <m-c> :CheckSwitch<cr>

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

if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" floatterm
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'
