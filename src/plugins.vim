call plug#begin()

" Visual improvements and tweaks
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'

" General purpose and helpful (really helpful) stuff
Plug 'chrisbra/colorizer'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
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
Plug 'reedes/vim-pencil'

exec "Plug '" g:fzf_path."'"
Plug 'junegunn/fzf.vim'

" PHP Stuff -> Really necessary
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'stanangeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'captbaritone/better-indent-support-for-php-with-html'

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
