set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Git support
Plugin 'tpope/vim-fugitive'
Plugin 'jreybert/vimagit'

" completion
" Plugin 'ajh17/VimCompletesMe'
Plugin 'ervandew/supertab'

" Fuzzy file finding
Plugin 'ctrlpvim/ctrlp.vim'

" comment helper
Plugin 'scrooloose/nerdcommenter'
" Plugin 'clinstid/nerdcommenter'

Plugin 'scrooloose/nerdtree'
" Plugin 'Shougo/unite.vim'

" file browser
Plugin 'jlanzarotta/bufexplorer'

" Perl support
" Plugin 'vim-perl/vim-perl'

" color schemes
Plugin 'clinstid/jellybeans.vim'
" Plugin 'clinstid/eink.vim'
" Plugin 'clinstid/vylight.vim'
Plugin 'clinstid/papercolor-theme.vim'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'notpratheek/vim-sol'
" Plugin 'notpratheek/vim-luna'
" Plugin 'sickill/vim-monokai'
" Plugin 'tomasr/molokai'
" Plugin 'sheerun/vim-wombat-scheme'
Plugin 'joshdick/onedark.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'morhetz/gruvbox'

" syntax checking
" Plugin 'scrooloose/syntastic'
Plugin 'neomake/neomake'

" most recently used files
Plugin 'yegappan/mru'

" Grep helper
Plugin 'yegappan/grep'

" Ruby support
" Plugin 'vim-ruby/vim-ruby'

" markdown support
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'mzlogin/vim-markdown-toc'

Plugin 'davidhalter/jedi-vim'
Plugin 'hynek/vim-python-pep8-indent'

Plugin 'majutsushi/tagbar'

Plugin 'mitsuhiko/vim-jinja'

" syntax support for ansible dialect of yaml
" Plugin 'chase/vim-ansible-yaml'
Plugin 'pearofducks/ansible-vim'

" syntax support for ABNF
" Plugin 'vim-scripts/abnf'
Plugin 'skilstak/vim-abnf-utf8'

Plugin 'stephpy/vim-yaml'

Plugin 'groenewege/vim-less'
Plugin 'hail2u/vim-css3-syntax'

Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'

Plugin 'elzr/vim-json'

Plugin 'rking/ag.vim'

" Plugin 'medihack/sh.vim'

" Plugin 'clinstid/vim-behave'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'PotatoesMaster/i3-vim-syntax'

" Snippets
" Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'
" let g:UltiSnipsExpandTrigger="<s-tab>"
" let g:UltiSnipsListSnippers="<c-tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Plugin 'suan/vim-instant-markdown'

Plugin 'xolox/vim-misc'
" Plugin 'xolox/vim-session'

" Plugin 'vim-scripts/DrawIt'
" Plugin 'Konfekt/FastFold'
" Plugin 'tmhedberg/SimpylFold'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'fatih/vim-go'

" Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'

Plugin 'airblade/vim-gitgutter'

Plugin 'artur-shaik/vim-javacomplete2'

Plugin 'vim-scripts/confluencewiki.vim'

" Typescript plugins
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'

" Plugin 'junegunn/fzf'

Plugin 'xolox/vim-notes'
Plugin 'vim-scripts/utl.vim'

" Pair brackets and quotes
" Plugin 'jiangmiao/auto-pairs'
Plugin 'Raimondi/delimitMate'

Plugin 'lifepillar/pgsql.vim'

Plugin 'dylon/vim-antlr'

Plugin 'isobit/vim-caddyfile'

Plugin 'aklt/plantuml-syntax'

Plugin 'w0rp/ale'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" always show status bar
set laststatus=2

" show stats in the command line
set ruler

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
set smarttab

" Highlight search matches
set hlsearch

" Search while you enter the query, not after
set incsearch

" More undos
set undolevels=1000

" Vim can set the title of the terminal window
set title
set icon

" Disable bell
set noerrorbells

" Enable syntax highlighting
syntax enable

" Tell vim that your terminal supports 256 colors
set t_Co=256

" Enable mouse for all modes
set mouse=a

" Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" autocmd FileType java setlocal omnifunc=javacomplete#Complete

autocmd FileType markdown setlocal spell

" Show a list and complete up to the longest match
set wildmenu
set wildmode=longest,list,full

" Copy and paste to X11 (and maybe OS X?) clipboard
" nmap <C-S-v> "+p
" vmap <C-S-c> "+y

" GUI specific options
if has("gui_running")
    set ghr=0
    " window size
    " set columns=80
    " set lines=40

    " Guioptions
    "   a: autoselect
    "   i: enable vim icon
    "   p: use pointer callbacks for X11 GUI, needed for some window managers
    set go=aip
    set fillchars="vert:\│"
    set mousemodel=popup_setpos
    set nomousehide
    set noerrorbells visualbell t_vb=
    autocmd GUIEnter * set visualbell t_vb=
    set guicursor=a:blinkon0
    if has("gui_macvim")
        set guifont=Hack\ Regular:h12
    else
        " set guifont=Ubuntu\ Mono\ 11
        set guifont=Hack\ 9
    endif
    " Dark colors
    set background=dark
    " let g:PaperColor_Theme_Options = {
      " \   'theme': {
      " \     'default': {
      " \       'transparent_background': 1
      " \     }
      " \   }
      " \ }
    " colorscheme PaperColor
    " let g:airline_theme='serene'

    " Light colors
    " set background=light
    " colorscheme PaperColor
    " let g:airline_theme='papercolor'
    " gruvbox overrides
    " let g:gruvbox_contrast_dark='hard'
    " highlight Normal ctermbg=None
    " colorscheme gruvbox
    " let g:airline_theme='gruvbox'

    " jellybeans stuff
    colorscheme jellybeans
    let g:airline_theme='jellybeans'

    " copy and paste to system clipboard
    imap <C-S-v> <C-r>+
    vmap <C-S-c> "+y
else
    set fillchars="vert:\│"
    " Dark colors
    set background=dark
    " let g:PaperColor_Theme_Options = {
      " \   'theme': {
      " \     'default': {
      " \       'transparent_background': 1
      " \     }
      " \   }
      " \ }
    " colorscheme PaperColor
    " let g:airline_theme='serene'

    let g:jellybeans_overrides = {
                \    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
                \}
    colorscheme jellybeans
    let g:airline_theme='jellybeans'

    " gruvbox overrides
    " let g:gruvbox_contrast_dark='hard'
    " colorscheme gruvbox
    " highlight Normal ctermbg=None
    " let g:airline_theme='gruvbox'

    " Light colors
    " set background=light
    " colorscheme PaperColor
    " let g:airline_theme='papercolor'
endif


" show line numbers
set number

" set title in xterm
set title

" enable file type settings
filetype indent on
filetype plugin on

" syntastic options
" let g:syntastic_ruby_checkers = ['mri', 'rubocop']
" let g:syntastic_yaml_checkers = ['jsyaml']
" let g:syntastic_python_python_exec = 'python3'
" /syntastic options

set encoding=utf-8

" most recently used
map <leader>mr :MRU<cr>

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
autocmd BufWritePre * :%s/\s\+$//e
" autocmd BufWritePre *.py :%s/\s\+$//e
" autocmd BufWritePre *.md :%s/\s\+$//e
" autocmd BufWritePre *.rb :%s/\s\+$//e
" autocmd BufWritePre *.js :%s/\s\+$//e

" mc files are mason
au BufNewFile,BufRead *.mc set filetype=mason

" ng-template files are html/angularjs
au BufNewFile,BufRead *.ng-template set filetype=html

" template files are probably JSON
au BufNewFile,BufRead *.template set filetype=json

" files in */playbooks/*.yml are probably ansible
au BufNewFile,BufRead */playbooks/*.yml set filetype=ansible

" files that start with Dockerfile are probably docker files
au BufNewFile,BufRead Dockerfile* set filetype=dockerfile

" files that contain Berksfile are ruby
au BufNewFile,BufRead *Berksfile* set filetype=ruby

" ANTLR files
au BufRead,BufNewFile *.g set filetype=antlr3
au BufRead,BufNewFile *.g4 set filetype=antlr4

" Groovy files
au BufRead,BufNewfile Jenkinsfile set filetype=groovy

" Confluence/Jira files
aut BufRead,BufNewfile *.jira set filetype=confluencewiki
aut BufRead,BufNewfile *.confluence set filetype=confluencewiki

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

" set spell
nmap <leader>so :set spell<cr>
nmap <leader>sf :set nospell<cr>

" faster redraw
set lazyredraw
set ttyfast

nmap <leader>sp :set paste<cr>
nmap <leader>np :set nopaste<cr>

nmap <leader>ic a Copyright (c) 2016 Dynamic Networks, Inc.

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

" vmap <C-c> "+y

set completeopt=longest,menuone,preview

if has("mouse_sgr")
    set ttymouse=sgr
else
    if !has('nvim')
        set ttymouse=xterm2
    end
end

" disable folding for markdown files
let g:vim_markdown_folding_disabled=1

" Markdown autoformatting
nmap <leader>tf :TableFormat<cr>

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
nmap <leader>i :IndentGuidesToggle<cr>
nmap <leader>p :echo expand('%:p')<cr>

let g:pymode_rope_complete_on_dot = 0
let python_highlight_all = 1

set conceallevel=1
let g:vim_markdown_conceal = 0

nnoremap <BS> :noh<CR><BS>

" jedi configuration
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#auto_vim_configuration = 0

" \tb - Toggle tagbar
nnoremap <leader>tb :TagbarToggle<cr>

set scrolloff=1
set sidescrolloff=5
set display+=lastline

" Make sure ctrlp shows hidden files
let g:ctrlp_show_hidden = 1

set history=1001

set noshowmode

" For git commit messages always start at the first line
autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])

" Don't automatically start markdown preview
let g:instant_markdown_autostart = 0
" Slow down instant markdown preview
let g:instant_markdown_slow = 1

" Folding settings
" set foldmethod=manual
" let g:SimpylFold_docstring_preview = 1
" let g:SimpylFold_fold_docstring = 0
" let g:SimpylFold_fold_import = 0
" set fdc=0

let g:vim_markdown_new_list_item_indent = 2

" autocmd! BufWritePost * Neomake

" nmap <leader>be :Unite buffer<cr>

" Session stuff
let g:session_autoload = "no"
let g:session_autosave = "yes"

nnoremap <leader>os :OpenSession<cr>

" Insert the current date
nmap <leader>id O<esc>"=strftime("# %b %d %Y\n")<CR>P<CR>i

let g:notes_directories = ['~/Dropbox/Oracle/vim-notes']
let g:notes_conceal_code = 0
" let g:notes_smart_quotes = 0

nmap <leader>notdone :s/DONE/TODO/<cr>:set nohlsearch<cr>
nmap <leader>done :s/TODO/DONE/<cr>:set nohlsearch<cr>
nmap <leader>td o	- TODO

" set synmaxcol=300

set ff=unix

let g:airline_powerline_fonts = 1

" ALE configuration
let g:ale_completion_enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1
let g:ale_keep_list_window_open = 1

let delimitMate_nesting_quotes = ['"', "'", '`']
let delimitMate_expand_space = 1
let delimitMate_expand_cr = 1
