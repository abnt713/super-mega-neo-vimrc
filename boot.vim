" Vim Plug download
if has('nvim')
    if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
      silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif
else
    if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif
endif

" PLUGINS
call plug#begin() 
exec "source" g:smnv_path."/core/plugins.vim"
exec "source" g:smnv_path."/user/plugins.vim"
call plug#end()

" EDITOR SETTINGS
exec "source" g:smnv_path."/core/editor.vim"
exec "source" g:smnv_path."/user/editor.vim"

" GENERAL SETTINGS
exec "source" g:smnv_path."/core/settings.vim"
exec "source" g:smnv_path."/user/settings.vim"

" KEY MAPS
exec "source" g:smnv_path."/core/maps.vim"
exec "source" g:smnv_path."/user/maps.vim"
