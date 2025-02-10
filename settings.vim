set nocompatible				" Использовать настройки Vim, а не Vi
set softtabstop=4				" Отступ на 2 пробела при нажатии клавиши tab
set shiftwidth=4				" Отступ на 4 пробела при автоматическом отступе
set tabstop=4					" Показать существующую вкладку шириной в 4 пробела
syntax on						" Включить подсветку синтаксиса
filetype plugin indent on       " Включить отступы для файлов
set autoindent					" Включить автоматический отступ
set number						" Включить номера строк
colorscheme desert				" Установить красивую цветовую схему
set nobackup					" Отключить резервные копии файлов
set noswapfile				    " Отключить резервные копии файлов
set nowb						" Отключить резервные копии файлов
set laststatus=2				" Показать строку состояния
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set wildmenu					" Отображение полных параметров вкладки командной строки 
set cursorline					" выделение строки, находящейся под курсором
set conceallevel=2
set concealcursor=nc
set laststatus=2
set mouse=a						" включить мышь для прокрутки и изменения размера
set omnifunc=syntaxcomplete#Complete
set smartindent
set splitbelow
set termwinsize=10x0
set hlsearch
set nowrap
set hidden					    " эффективное управление несколькими буферами: текущий буфер можно «отправить» в фоновый режим без записи на диск. Когда фоновый буфер снова становится текущим, метки и история отмены запоминаются
set autoread					" автоматически перечитывать файлы, если они были изменены не внутри Vim


" Commands
"
command DarkV execute 'set background=dark' | !sed -i 's/set background=light/set background=dark/' ~/.vimrc
command D :silent DarkV
"
command LightV execute 'set background=light' | !sed -i 's/set background=dark/set background=light/' ~/.vimrc
command L :silent LightV
"
command Cl normal ggdG:w<CR>

" Maps
"
nnoremap <silent> ,/ :nohlsearch<CR>
