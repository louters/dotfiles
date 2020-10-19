set nocompatible " Not vi compatible.
filetype off " required


set background=dark

"---------------------
" Basic editing config
"---------------------
set splitright
syntax on " Turn on syntax highlighting.
set showmatch " Show matching braces when text indicator is over them.
set shortmess+=I " Disable the default Vim startup message.
set number " Show line numbers.
set relativenumber " Show relative line number to current line.
set lbr " Line break.
set autochdir " Automatically set curr dir to dir of last opened file.
set listchars=tab:>>,nbsp:~ " Set list to see tabs and non-breakable spaces.
set laststatus=2 " Always(2) show the status line at the bottom.
set backspace=indent,eol,start " More intuitive backspace behaviour.
set mouse+=a " Enable mouse support.
set autoindent
set printencoding=utf-8

set nojoinspaces " Suppress sinserting two spaces between two sentences.
" Use 4 spaces instead of tabs during formatting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set incsearch " Search as str is being typed.
" Smart case-sensitive search.
set ignorecase
set smartcase

" Tab completion for files/buffers
set wildmode=longest,list
set wildmenu

"--------
" Plugins
"--------
set runtimepath^=~/.vim/vendor/start/ctrlp.vim "Full path fuzzy file, buffer finder

"---------------
" Vundle Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'davidhalter/jedi-vim' "Jedi completion (for Python here)
Plugin 'sirver/ultisnips' "Snippet solutions for Vim
Plugin 'klen/python-mode' "PyLint, Rope, Pydoc, breakpoints from box.
call vundle#end()

"-------
" Misc
"-------
" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

set noerrorbells visualbell t_vb= " Disable audible bell.


" Preventing bad habits like using the arrow keys for movement.
" In normal mode
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
