scriptencoding utf-8
set encoding=utf-8

" ----------------------------------------
" Bindings
" ----------------------------------------
" Set leader to ,
" Note: This line MUST come before any <leader> mappings
let mapleader=","
let localmapleader=","

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'
nmap <Leader>bi :PluginInstall<CR>
nmap <Leader>bu :PluginInstall!<CR> " Because this also updates
nmap <Leader>bc :PluginClean<CR>

""""""""""""""""""""
" My Plugins here:
""""""""""""""""""""

" Programming langueges
"   JavaScript
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'leshill/vim-json'
"   HTML
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'othree/html5.vim'
Plugin 'indenthtml.vim'
"   Other Languages
Plugin 'mutewinter/nginx.vim'
Plugin 'timcharper/textile.vim'
Plugin 'mutewinter/vim-css3-syntax'
Plugin 'mutewinter/vim-markdown'
Plugin 'jQuery'
Plugin 'tpope/vim-haml'
Plugin 'slim-template/vim-slim'
Plugin 'groenewege/vim-less'
Plugin 'ap/vim-css-color'
Plugin 'heartsentwined/vim-emblem'
Plugin 'dsawardekar/ember.vim'
" Ruby
Plugin 'vim-ruby/vim-ruby'
" Toggle between do/end and curly brackets
Plugin 'blockle.vim'
" Rails
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-cucumber'
Plugin 'ecomba/vim-ruby-refactoring'

" NERDTree
Plugin 'scrooloose/nerdtree'
nnoremap <leader>nn :NERDTreeToggle<CR>
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$' ]
let NERDTreeHighlightCursorline=1
let NERDTreeShowFiles=1

" Git wrapper -----------
Plugin 'tpope/vim-fugitive'
nmap <Leader>gc :Gcommit -v<CR>
nmap <Leader>gw :Gwrite<CR>
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gp :Git push<CR>
 " Mnemonic, gu = Git Update
nmap <Leader>gu :Git pull<CR>
nmap <Leader>gd :Gdiff<CR>
nmap <Leader>dgl :diffget LO<CR> :diffupdate<CR>
nmap <Leader>dgr :diffget RE<CR> :diffupdate<CR>
nmap <Leader>do :only<CR>
" Exit a diff by closing the diff window
nmap <Leader>gx :wincmd h<CR>:q<CR>

" Indent Guides --------
Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup=1

" Powerline ----------
Plugin 'bling/vim-airline'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols = {}
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" MiniBufExplorer ----------
Plugin 'fholgado/minibufexpl.vim'
map <Leader>l :MBEToggle<CR>:MBEFocus<CR>
let g:miniBufExplBRSplit = 1
let g:miniBufExplVSplit = 35
let g:miniBufExplAutoStart = 0

" Tabular --------
Plugin 'godlygeek/tabular'
noremap <Leader>t= :Tabularize /=<CR>
noremap <Leader>t: :Tabularize /^[^:]*:\zs/l0l1<CR>
noremap <Leader>t> :Tabularize /=><CR>
noremap <Leader>t, :Tabularize /,\zs/l0l1<CR>
noremap <Leader>t{ :Tabularize /{<CR>
noremap <Leader>t\| :Tabularize /\|<CR>

" Zoomwin ----------
Plugin 'ZoomWin'
noremap <Leader>o :ZoomWin<CR>
vnoremap <Leader>o <C-C>:ZoomWin<CR>
inoremap <Leader>o <C-O>:ZoomWin<CR>
noremap <C-W>+o :ZoomWin<CR>

" Yanking hictory management
Plugin 'YankRing.vim'
let g:yankring_replace_n_pkey = '<C-M>'
nnoremap <silent> ,yy :YRShow<CR>
nnoremap <silent> ,yc :YRClear<CR>

" CtrlP -------
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = '/\.\|\.o\|\.so\|vendor\|tmp'
let g:ctrlp_open_new_file='r'
let g:ctrlp_max_height=30
let g:ctrlp_lazy_update=1

" Gundo ---------
Plugin 'sjl/gundo.vim'
nnoremap <C-u> :GundoToggle<CR>
let g:gundo_width = 35

" QuickFixSigns
Plugin 'tomtom/quickfixsigns_vim'
let g:quickfixsigns_classes=['qfl', 'vcsdiff', 'breakpoints']

" Color schemes
Plugin 'nanotech/jellybeans.vim'

" Nice start screen
Plugin 'mhinz/vim-startify'
let g:startify_bookmarks = ['~/.vimrc',]
let g:startify_custom_footer = map(split(system('fortune ~/.vim/fortunes | cowthink -W 80'), '\n'), '"   ". v:val') + ['','']

" Utilities
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-endwise'
Plugin 'msanders/snipmate.vim'
Plugin 'matchit.zip'
Plugin 'tomtom/tcomment_vim'
Plugin 'TaskList.vim'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'IndexedSearch'
Plugin 'Raimondi/delimitMate'
Plugin 'AutoTag'

Plugin 'scrooloose/syntastic'
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

" This fork is required due to remapping ; to :
Plugin 'Lokaltog/vim-easymotion'

call vundle#end()             " required!
filetype plugin indent on     " required!

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -----------------------------
" Backups, swapfiles, Tmp Files
" -----------------------------
set nobackup
set nowritebackup
set noswapfile

" Undo
set undolevels=10000
if has("persistent_undo")
  set undodir=~/.vim/.undo       " Allow undoes to persist even after a file is closed
  set undofile
endif

" viminfo: remember certain things when we exit
" (http://vimdoc.sourceforge.net/htmldoc/usr_21.html)
"   %    : saves and restores the buffer list
"   '100 : marks will be remembered for up to 30 previously edited files
"   /100 : save 100 lines from search history
"   h    : disable hlsearch on start
"   "500 : save up to 500 lines for each register
"   :100 : up to 100 lines of command-line history will be remembered
"   n... : where to save the viminfo files
set viminfo=%100,'100,/100,h,\"500,:100,n~/.vim/viminfo

"--------------------------
" Display options
"--------------------------
syntax on
set cursorline
set number
set list!                       " Display unprintable characters
set listchars=tab:▸\ ,trail:•,extends:»,precedes:«
if $TERM =~ '256color'
  set t_Co=256
elseif $TERM =~ '^xterm$'
  set t_Co=256
endif
set laststatus=2   " Always show the statusline
set background=dark
colorscheme jellybeans

"--------------------------
" Copy/paste from/to Window clipboard
"--------------------------
set clipboard=unnamed            " Paste to vim from Window Clipboard
nnoremap <C-y> "+y
vnoremap <C-y> "+y

"--------------------------
" Resizing splits
"--------------------------
if bufwinnr(1)
  nmap = <C-W>=
  nmap + <C-W>+
  nmap - <C-W>-
  nmap <c-n> <C-w><
  nmap <c-m> <C-w>>
endif

"--------------------------
" Moving between splits
"--------------------------
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

"--------------------------
" Keybindings to native vim features
nnoremap <leader>s :%s/
vnoremap <leader>s :%s/
map <Leader>/ :nohlsearch<cr>

"--------------------------
" Git blame to how modified lines
"--------------------------
vmap <leader>w :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

"--------------------------
" Edit another file in same directory
"--------------------------
map <leader>ee :e <C-R>=expand("%:p:h") . '/'<CR>
map <leader>es :split <C-R>=expand("%:p:h") . '/'<CR>
map <leader>ev :vnew <C-R>=expand("%:p:h") . '/'<CR>

"--------------------------
" Subsitude
"--------------------------
nnoremap <leader>s :%s/
vnoremap <leader>s :%s/

"--------------------------
" Ctags options
"--------------------------
"set tags+=./tags;/
map <leader>] <C-]>
map <leader>]p <C-T>
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <leader>]v :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <leader>]h :sp <CR>:exec("tag ".expand("<cword>"))<CR>
autocmd BufWritePost *
      \ if filereadable('tags') |
      \   call system('ctags -a '.expand('%')) |
      \ endif

"--------------------------
" Misc
"--------------------------
filetype plugin indent on       " Do filetype detection and load custom file plugins and indent files
set hidden                      " Don't abandon buffers moved to the background
set wildmenu                    " Enhanced completion hints in command line
set backspace=eol,start,indent  " Allow backspacing over indent, eol, & start
set complete=.,w,b,u,U,t,i,d    " Do lots of scanning on tab completion
set diffopt=filler,iwhite       " In diff mode, ignore whitespace changes and align unchanged lines
set scrolloff=3                 " Start scrolling 3 lines before the horizontal window border
set noerrorbells                " Disable error bells
set cpoptions+=$                " Put '$' at the end of the changed text

" Check syntax for ruby
autocmd FileType ruby map <F9> :w !ruby -c<CR>

" up/down on displayed lines, not real lines. More useful than painful.
noremap k gk
noremap j gj

" Map Ctrl-a to highlight all code
nmap <C-a> gg<S-v><S-g>

"--------------------------
" Folding
"--------------------------
set foldenable
set foldmethod=syntax
set foldlevel=1

"--------------------------
" Sintax highlighting
"--------------------------
" Hamlc syntax highlighting
au BufRead,BufNewFile *.hamlc set ft=haml
" add jbuilder syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set ft=ruby

"--------------------------
" Editing vimrc
"--------------------------
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"--------------------------
" Indentation and tabbing
"--------------------------
set autoindent smartindent
set smarttab
set tabstop=2
set shiftwidth=2   " Indentation
set softtabstop=2  " This makes the backspace key treat the spaces like a tab
set expandtab      " Spaces instead of tab


" Search settings
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch

" ---------------
" Mouse
" ---------------
set mousehide  " Hide mouse after chars typed
set mouse=a    " Mouse in all modes
set ttymouse=xterm2 " fix mouse support inside tmux

"""""""""""""""""""""""""
" Custom functions
"""""""""""""""""""""""""

nmap fc :call CleanClose(1)<cr>
nmap fq :call CleanClose(0)<cr>

" Prettify json
nmap =j :%!python -m json.tool<CR>

function! CleanClose(tosave)
  if (a:tosave == 1)
      w!
  endif
  let todelbufNr = bufnr("%")
  let newbufNr = bufnr("#")
  if ((newbufNr != -1) && (newbufNr != todelbufNr) && buflisted(newbufNr))
      exe "b".newbufNr
  else
      bnext
  endif
  if (bufnr("%") == todelbufNr)
      new
  endif
  exe "bd!".todelbufNr
endfunction

" When opening a file, always jump to the last cursor position
autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \     exe "normal g'\"" |
    \ endif |

" Always edit file, even when swap file is found
set shortmess+=A

" Toggle paste mode while in insert mode with F12
set pastetoggle=<F12>

au BufNewFile,BufRead *.less set filetype=less

" cscope
if has("cscope")
  set cscopetag " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'

  " check cscope for definition of a symbol before checking ctags: set to 1
  " if you want the reverse search order.
  set csto=0

  " add any cscope database in current directory
  if filereadable("cscope.out")
    cs add cscope.out
  endif

  " show msg when any other cscope db added
  set cscopeverbose
end

" ruby path if you are using RVM
let g:ruby_path = system('rvm current')
