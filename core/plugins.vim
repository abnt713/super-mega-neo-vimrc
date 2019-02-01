" Visual improvements and tweaks
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'

" General purpose and helpful (really helpful) stuff
Plug 'chrisbra/colorizer'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'airblade/vim-gitgutter'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/auto-pairs-gentle'
Plug 'w0rp/ale'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/matchit.zip'
Plug 'reedes/vim-pencil'
Plug 'gilsondev/searchtasks.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" PHP Stuff -> Really necessary
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'stanangeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'captbaritone/better-indent-support-for-php-with-html'
Plug 'vim-scripts/phtml.vim'

" TAGS
Plug 'ludovicchabant/vim-gutentags'

" Blade templates are important
Plug 'jwalton512/vim-blade'

" I want dark powers
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'zchee/deoplete-jedi'
  Plug 'kristijanhusak/deoplete-phpactor'
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" What about Python?
Plug 'fisadev/vim-isort'

