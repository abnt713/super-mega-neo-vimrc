" Visual improvements and tweaks
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'tomasiser/vim-code-dark'

" General purpose and helpful (really helpful) stuff
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
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/matchit.zip'
Plug 'gilsondev/searchtasks.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" PHP Stuff -> Really necessary
Plug 'phpactor/phpactor', {'do': 'composer install', 'for': 'php'}
Plug 'stanangeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'captbaritone/better-indent-support-for-php-with-html'
Plug 'vim-scripts/phtml.vim'

" ALE
Plug 'w0rp/ale'

" NCM2
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

" Completion engines
Plug 'ncm2/ncm2-path' 
Plug 'ncm2/ncm2-bufword' 
" Javascript
Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
" PHP
Plug 'phpactor/ncm2-phpactor'
" Typescript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'ncm2/nvim-typescript', {'do': './install.sh'}
" GoLang
" Don't forget to install a fast version of gocode
" github.com/visualfc/gocode
Plug 'ncm2/ncm2-go'
Plug 'stamblerre/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" What about Python?
Plug 'fisadev/vim-isort'
