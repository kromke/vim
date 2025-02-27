" Ollama base URL
let g:ollama_host = 'http://localhost:11434'
" tab completion model
let g:ollama_model = 'starcoder2:3b'
" number of context lines to use for code completion
"let g:ollama_context_lines = '10'
" debounce time to wait before triggering a completion
"let g:ollama_debounce_time = '300'

" chat model
let g:ollama_chat_model = 'deepseek-coder-v2'
" override chat system prompt
let g:ollama_chat_systemprompt = 'Give short answers.'

" edit model
let g:ollama_edit_model = 'starcoder2:3b'
" when disabled, LLM changs are applied directly. Useful when tracking changes via Git.
"let g:ollama_use_inline_diff = 0

" debug settings
"let g:ollama_debug = 4
" general log file location
"let g:ollama_logfile = '/tmp/logs/vim-ollama.log'
" ollama chat conversation log
"let g:ollama_review_logfile = '/tmp/logs/vim-ollama-review.log'

" vim: filetype=vim.ollama
