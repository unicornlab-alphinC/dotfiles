call plug#begin()
" let g:python3_host_prog = '/usr/local/bin/python3'
" let g:python_host_prog='/usr/bin/python'

set number relativenumber
set hlsearch
set laststatus=2
set vb
set ruler
set spelllang=en_us
set autoindent
set mouse=a
set clipboard=unnamed
set noscrollbind
set wildmenu
set autochdir

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

nnoremap <C-b> :

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

set completeopt=noinsert,menuone,noselect

Plug 'ctrlpvim/ctrlp.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-commentary'
Plug 'mkitt/tabline.vim'

" - Code completion
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

" - File Explorer
Plug 'preservim/nerdtree'
nnoremap <C-b> :NERDTreeToggle<CR>

" - Status bar config
"Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

" - Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" - Golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'

" - Markdown
Plug 'iamcco/markdown-preview.nvim'

" - Theme
Plug 'NLKNguyen/papercolor-theme'
" set termguicolors
" set background=dark


Plug 'morhetz/gruvbox'



Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" - Tab sizing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

call plug#end()

" set termguicolors
set background=dark
colorscheme PaperColor
