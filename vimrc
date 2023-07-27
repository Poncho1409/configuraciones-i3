" ############### Configuraciones #################
set number 		" Agrega números de linea al lado izquierdo
set mouse=a 		" Permite utilizar el mouse
set numberwidth=1	" Configurar el ancho de los números de linea
set clipboard=unnamed	" Comparte el clipboard con el SO
syntax enable		" Habilita la sintax
set showcmd		" Muestra los comando que se escriben
set ruler		" Muestra la linea y columnas
set encoding=utf-8	" Especifica la codificación de los archivos
set showmatch		" Muestra los cierres de parentesis
set sw=4		" Cambia los tabs por 4 espacios
set relativenumber	" Cambia los numeros de lineas a relativos a la posición del cursor
set laststatus=2	" Mostar barra de estado
set cursorline		" Mostrar linea del cursor

" ############## Plugins ##############

call plug#begin('~/.vim/plugged')

" ############## Temas #############
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'arcticicestudio/nord-vim'
Plug 'srcery-colors/srcery-vim'
Plug 'ackyshake/Spacegray.vim'
Plug 'AlessandroYorba/Alduin'
Plug 'crusoexia/vim-monokai'

" ############## Utilidades ##############
" Easy motion
Plug 'easymotion/vim-easymotion'
" Navegador de archivos
Plug 'scrooloose/nerdtree'
" Navegaro entre paneles
Plug 'christoomey/vim-tmux-navigator'
" Barra de estado airline
Plug 'vim-airline/vim-airline'

" ############## IDE ################
" Plug 'vim-python/python-syntax' "Syntaxys de python
" Plug 'davidhalter/jedi-vim' "IDE python
" Instalación de emmet
" Plug 'mattn/emmet-vim'

call plug#end()

" ############## Configuración de temas ##############

" Configuración Gruvbox
let g:gruvbox_italic = '1'
let g:gruvbox_transparent_bg = '1'
let g:gruvbox_contrast_dark = 'hard'

" Seleccion de tema
colorscheme gruvbox


" ############## Shortcuts ##############

" Configuración de tecla lider
let mapleader=" "

" Configuración Easy motion
nmap <leader>s <Plug>(easymotion-s2)

" Configuración Nerdtree
nmap <Leader>nt :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1 

" Atajos
nmap <Leader>w :w<CR>
nmap <Leader>q :wq<CR>

" Airline configuration
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = '  '
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' ☰ '
let g:airline_symbols.maxlinenr = '  '
let g:airline_symbols.dirty='⚡'