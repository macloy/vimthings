""Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

set background=dark
set tabstop=4
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

let mapleader = ","
map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>t<leader> :tabnext 

:setlocal spell spelllang=en_us,de
map <leader>ss :setlocal spell!<cr>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


" Dies ist ein deutscher Satz der mehr braucht als eine Korrektur.
" Git vim mit .vimrc 
" Das dann mit .vim auschecken
" hier dann über ein setzen des Pfades die .add Datei rein.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
