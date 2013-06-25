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

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
nmap <Leader>bi :BundleInstall<CR>
nmap <Leader>bu :BundleInstall!<CR> " Because this also updates
nmap <Leader>bc :BundleClean<CR>

""""""""""""""""""""
" My Bundles here:
""""""""""""""""""""

" Programming langueges
"   JavaScript
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leshill/vim-json'
"   HTML
Bundle 'nono/vim-handlebars'
Bundle 'othree/html5.vim'
Bundle 'indenthtml.vim'
"   Other Languages
Bundle 'mutewinter/nginx.vim'
Bundle 'timcharper/textile.vim'
Bundle 'mutewinter/vim-css3-syntax'
Bundle 'mutewinter/vim-markdown'
Bundle "jQuery"
Bundle "tpope/vim-haml"
Bundle "slim-template/vim-slim"
Bundle "groenewege/vim-less"
Bundle "ap/vim-css-color"
" Ruby
Bundle 'vim-ruby/vim-ruby'
" Toggle between do/end and curly brackets
Bundle 'blockle.vim'
" Rails
Bundle 'tpope/vim-rails'
Bundle "tpope/vim-rake"
Bundle "tpope/vim-bundler"
Bundle 'tpope/vim-cucumber'
Bundle 'ecomba/vim-ruby-refactoring'

" NERDTree
Bundle 'scrooloose/nerdtree'
nnoremap <leader>nn :NERDTreeToggle<CR>
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$' ]
let NERDTreeHighlightCursorline=1
let NERDTreeShowFiles=1

" Git wrapper -----------
Bundle 'tpope/vim-fugitive'
nmap <Leader>gc :Gcommit -v<CR>
nmap <Leader>gw :Gwrite<CR>
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gp :Git push<CR>
 " Mnemonic, gu = Git Update
nmap <Leader>gu :Git pull<CR>
nmap <Leader>gd :Gdiff<CR>
" Exit a diff by closing the diff window
nmap <Leader>gx :wincmd h<CR>:q<CR>

" Indent Guides --------
Bundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup=1

" Powerline ----------
"Bundle 'Lokaltog/vim-powerline'
set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim
set laststatus=2   " Always show the statusline

" Screen -------------
Bundle "ervandew/screen"
let g:ScreenImpl = 'Tmux'
let g:ScreenShellTmuxInitArgs = '-2'
let g:ScreenShellQuitOnVimExit = 0
let g:ScreenShellHeight = 10
map <F5> :ScreenShell<CR>
"command -nargs=? -complete=shellcmd W  :w | :call ScreenShellSend("load '".@%."';")
map <Leader>cc :ScreenShell bundle exec rails c<CR>
map <Leader>r :w<CR> :call ScreenShellSend("rspec ".@%.':'.line('.'))<CR>
map <Leader>R :w<CR> :call ScreenShellSend("rspec ".@%)<CR>
map <Leader>e :w<CR> :call ScreenShellSend("cucumber --format=pretty ".@% . ':' . line('.'))<CR>
map <Leader>b :w<CR> :call ScreenShellSend("break ".@% . ':' . line('.'))<CR>

" MiniBufExplorer ----------
Bundle "fholgado/minibufexpl.vim"
map <Leader>l :MiniBufExplorer<cr>
let g:miniBufExplorerMoreThanOne = 10000
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplSplitBelow=1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplVSplit = 35

" Tabular --------
Bundle 'godlygeek/tabular'
noremap <Leader>t= :Tabularize /=<CR>
noremap <Leader>t: :Tabularize /^[^:]*:\zs/l0l1<CR>
noremap <Leader>t> :Tabularize /=><CR>
noremap <Leader>t, :Tabularize /,\zs/l0l1<CR>
noremap <Leader>t{ :Tabularize /{<CR>
noremap <Leader>t\| :Tabularize /\|<CR>

" Zoomwin ----------
Bundle "ZoomWin"
noremap <Leader>o :ZoomWin<CR>
vnoremap <Leader>o <C-C>:ZoomWin<CR>
inoremap <Leader>o <C-O>:ZoomWin<CR>
noremap <C-W>+o :ZoomWin<CR>

" Yanking hictory management
Bundle "YankRing.vim"
let g:yankring_replace_n_pkey = '<C-M>'
nnoremap <silent> ,yy :YRShow<CR>
nnoremap <silent> ,yc :YRClear<CR>

" CtrlP -------
Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = '/\.\|\.o\|\.so\|vendor\|tmp'
let g:ctrlp_open_new_file='r'
let g:ctrlp_max_height=30
let g:ctrlp_lazy_update=1

" Gundo ---------
Bundle "sjl/gundo.vim"
nnoremap <C-u> :GundoToggle<CR>
let g:gundo_width = 35

" QuickFixSigns
Bundle "tomtom/quickfixsigns_vim"
let g:quickfixsigns_classes=['qfl', 'vcsdiff', 'breakpoints']

" Color schemes
Bundle "nanotech/jellybeans.vim"

" Utilities
Bundle "tpope/vim-surround"
Bundle "ervandew/supertab"
Bundle "tpope/vim-endwise"
Bundle "msanders/snipmate.vim"
Bundle "ecomba/vim-ruby-refactoring"
Bundle "matchit.zip"
Bundle "tomtom/tcomment_vim"
Bundle "TaskList.vim"
Bundle "mileszs/ack.vim"
Bundle "AutoComplPop"
Bundle 'IndexedSearch'
Bundle 'Raimondi/delimitMate'
Bundle 'AutoTag'

" This fork is required due to remapping ; to :
Bundle 'Lokaltog/vim-easymotion'

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
set background=dark
colorscheme jellybeans

"--------------------------
" Resizing splits
"--------------------------
if bufwinnr(1)
  map = <C-W>=
  map + <C-W>+
  map - <C-W>-
  map <c-n> <C-w><
  map <c-m> <C-w>>
endif

"--------------------------
" Keybindings to native vim features
"--------------------------
map <Leader>ss :setlocal spell!<cr>
map <Leader>/ :nohlsearch<cr>

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

"--------------------------
" Folding
"--------------------------
set foldenable  
set foldmethod=syntax
set foldlevel=1 

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
