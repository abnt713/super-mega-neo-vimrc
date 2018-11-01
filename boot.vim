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
