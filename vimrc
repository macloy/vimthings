"htttps://gist.github.com/0xadada/1ea7f96d108dcfbe75c9#motion---normal-mode
" https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
" https://github.com/JAremko/alpine-vim/tree/master/alpine-vim-base

"Type :set termcap to see which vim keycodes are unused.
":only close all split windows

set encoding=utf8

set rnu

let mapleader = ","

"  set noswapfile

" Fast saving
nmap <leader>w :w!<cr>


set background=dark
set tabstop=4
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
set wmh=0

map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>t<leader> :tabnext 
	

"" xSpelling
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
" xMap <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <SPACE> /
map <C-SPACE> ?



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
