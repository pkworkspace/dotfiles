" " ========================================================================
" " Isaac Sloan - Vim Configuration 2012
" " ========================================================================
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" My bundles
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'
Bundle 'slim-template/vim-slim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-endwise'
Bundle 'vim-ruby/vim-ruby'
Bundle 'kien/ctrlp.vim'
" Bundle 'mileszs/ack.vim'
Bundle 'henrik/vim-qargs'
Bundle 'rking/ag.vim'
Bundle 'othree/html5.vim'
Bundle 'Raimondi/delimitMate'
" Bundle 'jiangmiao/auto-pairs'
Bundle 'tomtom/tcomment_vim'
" Bundle 'vim-scripts/HTML-AutoCloseTag'
Bundle 'Lokaltog/vim-powerline'
Bundle 'koron/nyancat-vim'
Bundle 'ap/vim-css-color'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'scrooloose/nerdtree'
" Bundle 'Lokaltog/vim-easymotion'
Bundle 'kchmck/vim-coffee-script'
" Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Yggdroot/indentLine'
" Bundle 'airblade/vim-gitgutter' # Makes everything slow i think.


" Makes it so I can select within ruby blocks
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
runtime macros/matchit.vim

" Ruby stuff
set nocompatible
syntax enable
filetype plugin indent on
set autowrite

augroup myfiletypes
	autocmd!
	autocmd FileType coffee,ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

" Ruby Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
highlight Pmenu ctermbg=238 gui=bold

" Key Bindings
let g:EasyMotion_leader_key = ";" 
let mapleader = ","
map <Leader>n :NERDTreeToggle<cr>
map <Leader>cn :vsplit ~/Dropbox/notes/coding-notes.txt<cr>
map <Leader>vc :vsplit ~/Dropbox/notes/vim-cheat.txt<cr>
map <Leader>ff mfgg=G`fzz
map <Leader>fl 0=$
map <Leader>e a<% x %><Esc>Fxxi
map <Leader>e= a<%= x %><Esc>Fxxi
map <Leader>el a<%= f.label x %><Esc>Fxxi
map <Leader>es a<%= f.select x %><Esc>Fxxi
map <Leader>et a<%= f.text_field x %><Esc>Fxxi
map <Leader>ef a<%= form_for x do %><cr><cr><%= f.submit %><cr><% end %><Esc>3kfxxi
map <Leader>ea a<%= link_to x %><Esc>Fxxi
map <Leader>elt a<%= label_tag x %><Esc>Fxxi
map <Leader>est a<%= select_tag x %><Esc>Fxxi
map <Leader>ett a<%= text_field_tag x %><Esc>Fxxi
" Finds and replaces in files based on the the current line.
map <Leader>fr ^l"ayt/^v$h"byu:vsp<CR>:Ag "<C-R>a"<CR>:Qdo %s<C-R>bge \| update<CR>
" Same as above but asks before all the changes.
map <Leader>far ^l"ayt/^v$h"byu:vsp<CR>:Ag "<C-R>a"<CR>:Qdo %s<C-R>bgce \| update<CR>
" Git Bindings
map <Leader>ga :Git add -A<CR>
map <Leader>gcm :Git commit -am ""<LEFT>
map <Leader>gp :Git push<CR>
map <Leader>gu :Git pull<CR>
map <Leader>gst Git status<CR>
map <Leader>g Git 
" Add new line on enter
map <S-CR> mnO<Esc>`n
map <CR> mno<Esc>`n
map <TAB> ==
vmap <TAB> =

" Other settings
let g:ctrlp_custom_ignore = '\v\.(jpeg|jpg|JPG|png)$'
let g:ctrlp_working_path_mode = 'ra'

colorscheme vividchalk 
set number
set nowrap
set hlsearch
set encoding=utf-8
let g:Powerline_symbols = 'fancy'
set guifont=Inconsolata:h14,Monaco:h12
set antialias
"let g:NERDTreeWinPos = "right"
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.
" set shellcmdflag=-ic " Uses bash settings from terminal. This makes vim suspend on startup in terminal vim though.
nnoremap gfv :vert winc f<cr>
nnoremap gfx :winc f<cr>
