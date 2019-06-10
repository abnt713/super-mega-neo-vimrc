autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect 
" inoremap <c-c> <ESC>

let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates"
" let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabDefaultCompletionType = "<c-n>"

""""""""""""""
" Auto Pairs "
""""""""""""""
let g:AutoPairsUseInsertedCount = 1

"""""""""""""""
" Status Line "
"""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

"""""""
" ALE "
"""""""
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']} 
let g:ale_fixers = {'python': ['isort', 'autopep8']} 
let g:ale_fix_on_save = 1

""""""""""""""
" Git Gutter "
""""""""""""""
let g:gitgutter_override_sign_column_highlight = 0
autocmd BufWritePost * GitGutter

autocmd FileType php setlocal omnifunc=phpactor#Complete
autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

let g:php_cs_fixer_rules = "@PSR2,no_unused_imports" " options: --fixers

let python_highlight_all = 1
let NERDTreeIgnore = ['\.pyc$', '\.egg-info$', '__pycache__', '__pycache__']
let g:vim_markdown_folding_disabled = 1
