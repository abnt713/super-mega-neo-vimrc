"""""""""""""""""""
" EDITOR SETTINGS "
"""""""""""""""""""
syntax enable

set number showmatch
set expandtab smarttab autoindent smartindent

set shiftwidth=4
set colorcolumn=80
set laststatus=2
set completeopt=longest,menuone

set signcolumn=yes
set autochdir

"""""""""
" Netrw "
"""""""""
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction

""""""""
" MAPS "
""""""""
map <leader>v "+gP
map <leader>c "+y

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

cmap w!! w !sudo tee % >/dev/null

nnoremap <leader>t :call ToggleVExplorer()<CR>
