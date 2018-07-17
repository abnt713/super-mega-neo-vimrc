let $LOCAL_PLUGS = $HOME.'/.vim/plugs.local.vimrc'
let $LOCAL_PRE = $HOME.'/.vim/pre.local.vimrc'
let $LOCAL_POST = $HOME.'/.vim/post.local.vimrc'

syntax enable

set number
" set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

set expandtab
set shiftwidth=4
set smarttab
set autoindent
set smartindent

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

if filereadable($LOCAL_PRE)
  source $LOCAL_PRE
endif

call plug#begin()
if filereadable($LOCAL_PLUGS)
  source $LOCAL_PLUGS
endif
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
Plug 'shawncplus/phpcomplete.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'editorconfig/editorconfig-vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'adoy/vim-php-refactoring-toolbox'
Plug 'docteurklein/php-getter-setter.vim'
call plug#end()

let NERDTreeQuitOnOpen=1
let g:gutentags_cache_dir = '~/.vim/gutentags'
let g:gutentags_ctags_extra_args = ['--PHP-kinds=+cdfint-av']
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
                                  \ '*.phar', '*.ini', '*.rst', '*.md',
                                  \ '*var/cache*', '*var/log*']
                                  " \ '*vendor/*/test*', '*vendor/*/Test*',
                                  " \ '*vendor/*/fixture*', '*vendor/*/Fixture*',
 

colorscheme monokai

if filereadable($LOCAL_POST)
  source $LOCAL_POST
endif

" Vim PHP Namespace - Functions

" <leader>t import use statement 
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

" <leader>e expands fully qualified class name
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction

autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>

" auto sort after insert use statements
let g:php_namespace_sort_after_insert = 1

