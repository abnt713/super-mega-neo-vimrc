syntax enable

set number
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set colorcolumn=80

set laststatus=2
set noshowmode
set shortmess+=I

nnoremap <leader>t :NERDTreeToggle <CR>
nnoremap <leader>; :Files<CR>
map <leader>v "+gP
map <leader>c "+y

set completeopt-=preview

cmap w!! w !sudo tee % >/dev/null

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'stanangeloff/php.vim'
Plug 'junegunn/fzf.vim'
Plug 'sickill/vim-monokai'
Plug 'plasticboy/vim-markdown'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'chrisbra/colorizer'
Plug 'ludovicchabant/vim-gutentags'
Plug 'shawncplus/phpcomplete.vim'
call plug#end()

let NERDTreeQuitOnOpen=1

colorscheme monokai
