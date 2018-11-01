let g:deoplete#enable_at_startup = 1
let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates"
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

let g:AutoPairsUseInsertedCount = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

autocmd FileType php setlocal omnifunc=phpactor#Complete
autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

let python_highlight_all = 1
let NERDTreeIgnore = ['\.pyc$', '\.egg-info$', '__pycache__', '__pycache__']
let g:vim_markdown_folding_disabled = 1
