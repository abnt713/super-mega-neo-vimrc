" Copy/Paste to Clipboard
map <leader>v "+gP
map <leader>c "+y

" Save as root
cmap w!! w !sudo tee % >/dev/null

" FZF
map <leader>f :Files <CR>
map <leader>; :Buffers<CR>

" NERDTree
nnoremap <leader>t :NERDTreeToggle <CR>

" PHPActor
nmap <Leader>u :call phpactor#UseAdd()<CR>
nmap <Leader>mm :call phpactor#ContextMenu()<CR>
nmap <Leader>nn :call phpactor#Navigate()<CR>
nmap <Leader>o :call phpactor#GotoDefinition()<CR>
nmap <Leader>ct :call phpactor#Transform()<CR>
nmap <Leader>cc :call phpactor#ClassNew()<CR>
nmap <silent><Leader>ee :call phpactor#ExtractExpression(v:false)<CR>
vmap <silent><Leader>ee :<C-U>call phpactor#ExtractExpression(v:true)<CR>
vmap <silent><Leader>em :<C-U>call phpactor#ExtractMethod()<CR>
