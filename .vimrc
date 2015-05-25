" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Git support
Plugin 'tpope/vim-fugitive'

" completion
Plugin 'Shougo/neocomplete.vim'

" Fuzzy file finding
Plugin 'https://github.com/kien/ctrlp.vim'

" comment helper
Plugin 'scrooloose/nerdcommenter'

" comment helper
Plugin 'scrooloose/nerdtree'

" file browser
Plugin 'jlanzarotta/bufexplorer'

" Perl support
Plugin 'vim-perl/vim-perl'

" airline statusline
Plugin 'bling/vim-airline'

" jellybeans color scheme
Plugin 'nanotech/jellybeans.vim'

" syntax checking
Plugin 'scrooloose/syntastic'

" most recently used files
Plugin 'yegappan/mru'

" Grep helper
Plugin 'yegappan/grep'

" Ruby support
Plugin 'vim-ruby/vim-ruby'

" Unite to open stuff
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neomru.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'Shougo/vimproc.vim'

" markdown support
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'

" source control
Plugin 'vim-scripts/vcscommand.vim'

" todo.txt plugin
Plugin 'freitass/todo.txt-vim'

Plugin 'klen/python-mode'

Plugin 'majutsushi/tagbar'

Plugin 'mitsuhiko/vim-jinja'

" syntax support for ansible dialect of yaml
Plugin 'chase/vim-ansible-yaml'

Plugin 'stephpy/vim-yaml'

Plugin 'groenewege/vim-less'
Plugin 'hail2u/vim-css3-syntax'

Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'

Plugin 'elzr/vim-json'

Plugin 'rking/ag.vim'

Plugin 'medihack/sh.vim'

Plugin 'tomasr/molokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" always show statusline
set laststatus=2

" Allows you to have multiple buffers open
set hidden

" Lines of code will wrap to the next line
set wrap

" Only wrap at linebreaks
set linebreak

" Make backspace behave like other editors
set backspace=indent,eol,start

" Automatically indent on new lines
set autoindent

" Copy the indentation of the previous line if auto indent doesn't know what to do
set copyindent

" Indenting a line with >> or << will indent or un-indent by 4
set shiftwidth=4

" Pressing tab in insert mode will use 4 spaces
set softtabstop=4

" Use spaces instead of tabs
set expandtab

" Highlight matching braces/tags
set showmatch

" Ignore case when searching
set ignorecase

" ...unless there's a capital letter in the query
set smartcase

" Indent to correct location with tab
"set smarttab

" Highlight search matches
set hlsearch

" Search while you enter the query, not after
set incsearch

" More undos
set undolevels=1000

" Vim can set the title of the terminal window
set title

" Disable bell
set noerrorbells

" Enable syntax highlighting
syntax enable

" Tell vim that your terminal supports 256 colors
set t_Co=256

" Enable mouse for all modes
set mouse=a

" necomplete options
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1

" Use smartcase.
let g:neocomplete#enable_smart_case = 1

" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" /neocomplete options

let g:airline_theme = 'wombat'
colorscheme jellybeans

" Show a list and complete up the longest match
set wildmode=list:longest

set fillchars+=vert:\ 

" GUI specific options
if has("gui_running")
    " window size
    set columns=80
    set lines=40

    " Guioptions 
    "   a: autoselect
    "   i: enable vim icon
    "   p: use pointer callbacks for X11 GUI, needed for some window managers
    set go=aip
    set mousemodel=popup_setpos
    set nomousehide
    set noerrorbells visualbell t_vb=
    autocmd GUIEnter * set visualbell t_vb=
    set guicursor=a:blinkon0
    if has("gui_macvim")
        set guifont=Ubuntu\ Mono:h16
    else
        set guifont=Ubuntu\ Mono\ 11
    endif
endif

" show line numbers
set number

" set title in xterm
set title

" enable file type settings
filetype indent on
filetype plugin on

" syntastic options
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_yaml_checkers = ['jsyaml']
" /syntastic options

set encoding=utf-8

" most recently used
map <leader>mr :MRU<cr>

" copy to system clipboard
vmap <C-c> "*y

" toggle nerdtree
map <leader>e :NERDTreeToggle<cr>

" Show hidden files in NERDTree
let NERDTreeShowHidden=1

" Add a space after comments
let NERDSpaceDelims=1

" remove trailing whitespace
map <leader>w :%s/\s\+$//e<cr>

" clear hlsearch
map <leader>q :set nohlsearch<cr>

autocmd BufEnter * silent! lcd %:p:h

" remote whitespace on save
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.js :%s/\s\+$//e

" mc files are mason
au BufNewFile,BufRead *.mc set filetype=mason

" ng-template files are html/angularjs
au BufNewFile,BufRead *.ng-template set filetype=html

" look for a tags file
set tags=tags;

" show tabs and trailing spaces
" set list
" set listchars=tab:»·,trail:·

" pymode options

" disable colorcolumn for pymode
let g:pymode_options_colorcolumn = 0

" disable folding
let g:pymode_folding = 0

let g:pymode_options_max_line_length = 120
let g:pymode_lint_ignore = "C901"
let g:syntastic_python_flake8_args = "--max-line-length=120"

set spell

" faster redraw
set lazyredraw
set ttyfast

nmap <leader>sp :set paste<cr>
nmap <leader>np :set nopaste<cr>

set formatoptions=tcroqln

" javascript libraries
let g:used_javascript_libs = 'angularjs,jquery'

" return to last position in previously edited file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Don't conceal quotes in JSON files
let g:vim_json_syntax_conceal = 0

" set cursorline

vmap <C-c> "+y

set completeopt=menuone
