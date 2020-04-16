"htttps://gist.github.com/0xadada/1ea7f96d108dcfbe75c9#motion---normal-mode
" https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
" https://github.com/JAremko/alpine-vim/tree/master/alpine-vim-base

""Set utf8 as standard encoding and en_US as the standard language

set encoding=utf8

set rnu

set background=dark
set tabstop=4
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

let mapleader = ","
map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>t<leader> :tabnext 
	

"" Spelling
" The spell .wdd file are automatically saved under ~/.vim/spell 
" Word completion will use the words from the own file with ctrl-n
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
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <C-space> ?



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
" https://github.com/preservim/nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let g:NERDTreeWinSize=50
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>
let NERDTreeShowHidden=1



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
