set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] } 
Plug 'vim-syntastic/syntastic'
Plug 'mtscout6/syntastic-local-eslint.vim'
call plug#end()

syntax on 
syntax enable
set background=dark
colorscheme solarized
set number relativenumber
set mouse=a
set clipboard=unnamed
set noswapfile
set tabstop=2 shiftwidth=2 expandtab
set autochdir

let NERDTreeChDirMode=2
let NERDTreeShowHidden=1
let $FZF_DEFAULT_COMMAND='ag -g ""'

" Disable Arrow keys in Escape mode
 map <up> <nop>
 map <down> <nop>
 map <left> <nop>
 map <right> <nop>

" Disable Arrow keys in Insert mode
 imap <up> <nop>
 imap <down> <nop>
 imap <left> <nop>
 imap <right> <nop>

map <silent> <C-n> :NERDTreeToggle<CR>
map <silent> <C-f> :Files<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0 
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" max line length that prettier will wrap on
let g:prettier#config#print_width = 80

" number of spaces per indentation level
let g:prettier#config#tab_width = 2

" use tabs over spaces
let g:prettier#config#use_tabs = 'false'

" print semicolons
let g:prettier#config#semi = 'true'

" single quotes over double quotes
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
let g:prettier#config#bracket_spacing = 'true'

" put > on the last line instead of new line
let g:prettier#config#jsx_bracket_same_line = 'false'

" none|es5|all
let g:prettier#config#trailing_comma = 'all'

