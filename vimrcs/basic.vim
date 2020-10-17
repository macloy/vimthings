" https://gist.github.com/0xadada/1ea7f96d108dcfbe75c9#motion---normal-mode
" https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
" https://github.com/JAremko/alpine-vim/tree/master/alpine-vim-base
" https://medium.com/usevim
" https://thevaluable.dev/vim-php-ide/
"curl -fLo ~/.vim/autoload/plug.vim  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim





" Noch zu lösen
" Anzeigen von php-Fehlern Syntag (nicht genutzte Variabel)
" Sprung auf Classe/Methode die unter dem Cursor liegt.
" mehrere Variablen Speichern
" Codeergänzung
" Automatisches Formatieren
" anzeige aller Variablen gleichen typs
" snippets

" touch /usr/local/bin/php
" #!/bin/bash
" docker run -it --rm php:7.0-apache php "$@"


"Type :set termcap to see which vim keycodes are unused.
":only close all split windows


" The folder .vim/plugged ist NOT under version control.
" The folder will be created automatically, when a plugin is downloaded.

" Folding shortcuts
" za, zo, zc
" zo: open a fold at cursor
" zO: open all folds down at cursor
" zc: close a fold at cursor
" zC: close all levels of folds at cursor
" za: / zA: toggle fold
" zm: close fold by one level across the file
" zM: close all folds across the file
" zr: open fold by one level across the file
" zR: open all folds across the file
" zj / zk: move to next / previous fold
" [z / ]z: go to begining / end of the fold
"
" set foldmethod: show foldmethod
" set fdm: show foldmethod
" set fdm=manual: set foldmethod manual
" zf: create fold
" zd: delete fold
" 158,167 fold: fold this range
" c-v5jzf: visual mod 5 line down and create fold
" c-va{zf: create fold between existing {}




" Window resize codes
" <C-W>+, <C-W>-, <C-W>|, <C-W>_, <C-W>=

" Window switch codes (see also remaps below)
" <C-W>t, <C-W>b
" :help ctrl-W


" Empty Lines
" 5o<ESC>, 5O<ESC>

" Motion
" motion g,  g;
" jumps  <CTRL-I>	<CTRL-O>

" Search
" fx, Fx, 3fx  
" Next/back	; ,

" Register
" :h registers
" https://www.brianstorti.com/vim-registers/
" https://vim.fandom.com/wiki/Replace_a_word_with_yanked_text
" Show register
" :reg
" :reg a
" :reg 1

" Copy and Paste to register a
" nmo line  	"ayy "ap
" nmo end of word/line:  "ayw   "ay$

" Copy and Paste to standard register
" line	y	p
" till end of the word/line  yw  y$
" word  byw  or yiw
" select word an replace it: viwp
" replace word with register content: viw"0p
" replace word with register a content: ciw<Ctrl-R>a<ESC>
" yank inner text in quotes: yi"
" paste inner text in quotes with register 0 content: ci"<Ctrl-R>0p
" paste below line(current/register a/line): :pu :pu a   :3pu
" Further register
" last insert text: ".
" filename: "%
" last command: ":    repeat last command: @:
" alternate file (see :h alternate-file): "#

" expression registers
" example: imo:   15*444=<Ctrl-R>=15+444
" example: imo:   <Ctrl-R>=system('ls')

" search registers
" every search (/, ?, *, #) goes to register "/
" reuse it with e.g: :%s/<Ctrl-r />/mytext/g

" macro register
" goes to "w
"
" edit a register
" :let @a='<Ctrl-r a>   (now edit an close with ' )





call plug#begin('~/.vim/plugged')

"Plug 'vim-syntastic/syntastic'
":help syntastic-checkers
":SyntasticInfo
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
"let g:syntastic_php_checkers = ['php']
"let g:syntastic_php_php_exec = ['/tmp']

" PHP
Plug 'StanAngeloff/php.vim', {'for': 'php'}

Plug 'rayburgemeestre/phpfolding.vim', {'for': 'php'}

  "Plug 'stephpy/vim-php-cs-fixer', {'for': 'php'}

Plug 'scrooloose/nerdtree'

" Plug to dim colors of not-focused windows
Plug 'blueyed/vim-diminactive'

call plug#end()


set encoding=utf8

set rnu

let mapleader = ","

set noswapfile

" Searching
set ignorecase


" Folding
set foldmethod=indent



" Fast saving
map <leader>w :w!<cr>


set background=dark
set tabstop=4
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
hi statusline ctermbg=3 ctermfg=0
hi ColorColumn ctermbg=4

" Window switching
"map <C-J> <C-W>j<C-W>_
"map <C-K> <C-W>k<C-W>_
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
set wmh=0

" Tab codes
map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>t<leader> :tabnext 

" Syntax
"Syntax is on (probably through php.vim plugin)
"syntax off


"The spell .add file are automatically saved under ~/.vim/spell 
" Word completion will use the words from the own file with ctrl-n
":setlocal spell spelllang=en_us,de
set nospell
"set spelllang=en_us
"set spelllang=en_us,de
set spelllang=de
map <leader>ss :setlocal spell!<cr>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=




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


"Insert one character
"nnoremap <C-i> i_<Esc>r

"Insert one character at the end of a word
nnoremap <C-a> ea_<Esc>r


" Formatierung für pdf: https://github.com/asciidoctor/asciidoctor-pdf/blob/master/docs/theming-guide.adoc
" autocmd BufWritePost *.adoc !docker run --rm -v /home/joachim/git/fhg_ahead/work/doku/asciidoc:/documents/ asciidoctor/docker-asciidoctor asciidoctor -r asciidoctor-diagram -b html5 index.adoc
"autocmd BufWritePost *.adoc !docker run --rm -v /home/joachim/git/personagrata/work/doku/asciidoc:/documents/ asciidoctor/docker-asciidoctor asciidoctor-pdf -r asciidoctor-diagram  index.adoc
"autocmd BufWritePost *.adoc !docker run --rm -v /home/joachim/git/personagrata/work/doku/asciidoc:/documents/ asciidoctor/docker-asciidoctor asciidoctor -r asciidoctor-diagram  index.adoc
map <leader>wd :w<CR>:!docker run --rm -v /home/joachim/git/personagrata/work/doku/asciidoc:/documents/ asciidoctor/docker-asciidoctor asciidoctor -r asciidoctor-diagram  index.adoc<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ascii-Folding 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! AsciidocLevel()
    if getline(v:lnum) =~ '^== .*$'
        return ">1"
    endif
    if getline(v:lnum) =~ '^=== .*$'
        return ">2"
    endif
    if getline(v:lnum) =~ '^==== .*$'
        return ">3"
    endif
    if getline(v:lnum) =~ '^===== .*$'
        return ">4"
    endif
    if getline(v:lnum) =~ '^====== .*$'
        return ">5"
    endif
    if getline(v:lnum) =~ '^======= .*$'
        return ">6"
    endif
    return "="
endfunction
" run the folding level method when asciidoc is here
autocmd Syntax asciidoc setlocal foldexpr=AsciidocLevel()
" enable folding method: expression on asciidoc
autocmd Syntax asciidoc setlocal foldmethod=expr
" start with text unfolded all the way
autocmd BufRead *.adoc normal zM


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
