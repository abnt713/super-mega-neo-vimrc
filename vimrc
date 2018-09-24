" Path definitions for external sourcing
let $LOCAL_PLUGS = $HOME.'/.vim/plugs.local.vimrc'
let $LOCAL_PRE = $HOME.'/.vim/pre.local.vimrc'
let $LOCAL_POST = $HOME.'/.vim/post.local.vimrc'

" Syntax colors and line numbers
syntax enable
set number
set showmatch

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

filetype plugin on 

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

map <leader>f :Files <CR>
map <leader>; :Buffers<CR>

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
Plug 'morhetz/gruvbox'
Plug 'thenewvu/vim-colors-blueprint' 
Plug 'flazz/vim-colorschemes'

" General purpose and helpful (really helpful) stuff
Plug 'chrisbra/colorizer'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/auto-pairs-gentle'
Plug 'scrooloose/syntastic'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/matchit.zip'

" PHP Stuff -> Really necessary
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'stanangeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'

" Blade templates are important
Plug 'jwalton512/vim-blade'

" I want dark powers
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'zchee/deoplete-jedi'
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" What about Python?
Plug 'fisadev/vim-isort'

call plug#end()

let g:deoplete#enable_at_startup = 1

" Configuration after loading the Plugins
if filereadable($LOCAL_POST)
  source $LOCAL_POST
endif

"""""""""""""""""
" Theme Setting "
"""""""""""""""""

colorscheme ir_black
set background=dark

" Shortcut for our NERDTree
nnoremap <leader>t :NERDTreeToggle <CR>

let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates"

" Supertab should use omnicomplete
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" Gentle way of using auto pairs
let g:AutoPairsUseInsertedCount = 1

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

let python_highlight_all = 1

let NERDTreeIgnore = ['\.pyc$', '\.egg-info$', '__pycache__', '__pycache__']
