" Path definitions for external sourcing
let $LOCAL_PLUGS = $HOME.'/.vim/plugs.local.vimrc'
let $LOCAL_PRE = $HOME.'/.vim/pre.local.vimrc'
let $LOCAL_POST = $HOME.'/.vim/post.local.vimrc'

set noesckeys

" Syntax colors and line numbers
syntax enable
set number

" Indentation! Really important stuff
set expandtab
set shiftwidth=4
set smarttab
set autoindent
set smartindent

" Set a limit of 80 characters with a colored column
set colorcolumn=80

" Statusbar
set laststatus=2

" Minify some show options
" set noshowmode
" set shortmess+=I

" Copy to / paste from clipboard shortcuts
map <leader>v "+gP
map <leader>c "+y

" Omnicompletion improvements
set completeopt=longest,menuone

" Allows using <CR> to select itens in omnicompletion dialog
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Saves as root
cmap w!! w !sudo tee % >/dev/null

if filereadable($LOCAL_PRE)
  source $LOCAL_PRE
endif

call plug#begin()

" Allows local configuration of local packages
if filereadable($LOCAL_PLUGS)
  source $LOCAL_PLUGS
endif

" Visual improvements and tweaks
Plug 'itchyny/lightline.vim'
Plug 'sickill/vim-monokai'

" General purpose and helpful (really helpful) stuff
Plug 'chrisbra/colorizer'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mhinz/vim-signify'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/auto-pairs-gentle'
Plug 'scrooloose/syntastic'

" PHP Stuff -> Really necessary
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'stanangeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'

" Blade templates are important
Plug 'jwalton512/vim-blade'

call plug#end()



" Configuration after loading the Plugins
if filereadable($LOCAL_POST)
  source $LOCAL_POST
endif

colorscheme monokai

" Shortcut for our NERDTree
nnoremap <leader>t :NERDTreeToggle <CR>

let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates"

" Supertab should use omnicomplete
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" Gentle way of using auto pairs
let g:AutoPairsUseInsertedCount = 1

" Gutentags optimized settings
let g:gutentags_cache_dir = '~/.vim/gutentags'
let g:gutentags_ctags_extra_args = ['--PHP-kinds=+cdfintv-a']
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
                                  \ '*.phar', '*.ini', '*.rst', '*.md',
                                  \ '*var/cache*', '*var/log*']
                                  " \ '*vendor/*/test*', '*vendor/*/Test*',
                                  " \ '*vendor/*/fixture*', '*vendor/*/Fixture*',

" Syntastic settings for n00bs
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" PHP Actor

" Include use statement
nmap <Leader>u :call phpactor#UseAdd()<CR>

" Invoke the context menu
nmap <Leader>mm :call phpactor#ContextMenu()<CR>

" Invoke the navigation menu
nmap <Leader>nn :call phpactor#Navigate()<CR>

" Goto definition of class or class member under the cursor
nmap <Leader>o :call phpactor#GotoDefinition()<CR>

" Transform the classes in the current file
nmap <Leader>ct :call phpactor#Transform()<CR>

" Generate a new class (replacing the current file)
nmap <Leader>cc :call phpactor#ClassNew()<CR>

" Extract expression (normal mode)
nmap <silent><Leader>ee :call phpactor#ExtractExpression(v:false)<CR>

" Extract expression from selection
vmap <silent><Leader>ee :<C-U>call phpactor#ExtractExpression(v:true)<CR>

" Extract method from selection
vmap <silent><Leader>em :<C-U>call phpactor#ExtractMethod()<CR>

autocmd FileType php setlocal omnifunc=phpactor#Complete

" SAVE ACTIONS

" PHP CS Fixer while saving PHP files
autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()
