set exrc
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set nu
set relativenumber
set hidden
set nohlsearch
set noerrorbells
set smartcase
set ignorecase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set completeopt=menuone,noinsert,noselect

set updatetime=50

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'nvim-telescope/telescope.nvim'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

colorscheme gruvbox
highlight Normal guibg=none


let mapleader = " "

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({search = vim.fn.input("Grep For > ")})<CR>
imap jk <Esc>
silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NerdTreeFind<CR>

let g:NERDTreeMapOpenSplit="<F3>"
