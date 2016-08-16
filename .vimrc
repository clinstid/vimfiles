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
Plugin 'ctrlpvim/ctrlp.vim'

" comment helper
Plugin 'scrooloose/nerdcommenter'

" comment helper
Plugin 'scrooloose/nerdtree'

" file browser
Plugin 'jlanzarotta/bufexplorer'

" Perl support
Plugin 'vim-perl/vim-perl'

" jellybeans color scheme
Plugin 'clinstid/jellybeans.vim'
Plugin 'clinstid/eink.vim'
Plugin 'clinstid/minimal.vim'

Plugin 'rakr/vim-one'
Plugin 'tomasr/molokai'
Plugin 'tyrannicaltoucan/vim-deep-space'

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
" Plugin 'tpope/vim-markdown'
" Plugin 'jtratner/vim-flavored-markdown'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'ervandew/supertab'

" source control
" Plugin 'vim-scripts/vcscommand.vim'

" todo.txt plugin
" Plugin 'freitass/todo.txt-vim'

" Plugin 'klen/python-mode'
" Plugin 'python-rope/ropevim'
Plugin 'davidhalter/jedi-vim'
Plugin 'hynek/vim-python-pep8-indent'

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

" Plugin 'airblade/vim-gitgutter'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'clinstid/vim-behave'

Plugin 'vim-scripts/utl.vim'
Plugin 'mattn/calendar-vim'
Plugin 'jceb/vim-orgmode'
Plugin 'vim-scripts/taglist.vim'
Plugin 'tpope/vim-speeddating'

Plugin 'tenable/vim-nasl'

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

" Disable bell
set noerrorbells

" Enable syntax highlighting
syntax enable

" Tell vim that your terminal supports 256 colors
set t_Co=256

" Enable mouse for all modes
set mouse=a

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

autocmd FileType markdown setlocal spell

" Enable heavy omni completion.
" if !exists('g:neocomplete#sources#omni#input_patterns')
  " let g:neocomplete#sources#omni#input_patterns = {}
" endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
" let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" /neocomplete options

let g:neocomplete#enable_at_startup = 1
" let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_smart_case = 1
" let g:neocomplete#auto_completion_start_length = 2

" Enable tab to use neocomplete
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Show a list and complete up to the longest match
set wildmenu
set wildmode=longest,list,full

" Copy and paste to X11 (and maybe OS X?) clipboard
" nmap <C-S-v> "+p
" vmap <C-S-c> "+y

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
    if (has("nvim"))
	"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
	set termguicolors
    endif
endif

" GUI specific options
if has("gui_running")
    " window size
    " set columns=80
    " set lines=40

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
        set guifont=Hack\ Regular:h12
    else
        " set guifont=Ubuntu\ Mono\ 11
        set guifont=Hack\ 9
    endif
    set background=dark
    colorscheme minimal
else
    set background=dark
    colorscheme minimal
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
autocmd BufWritePre *.md :%s/\s\+$//e
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

set nospell
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

set completeopt=longest,menuone

if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

" disable folding for markdown files
let g:vim_markdown_folding_disabled=1

" Markdown autoformatting
nmap <leader>tf :TableFormat<cr>

" let g:indent_guides_enable_on_vim_startup = 1
nmap <leader>i :IndentGuidesToggle<cr>
nmap <leader>p :echo expand('%:p')<cr>

let g:pymode_rope_complete_on_dot = 0
let python_highlight_all = 1

set conceallevel=0
let g:vim_markdown_conceal = 0

set fillchars=vert:\  

function! GetFullModeName(mode)
    if a:mode ==? 'i'
        return 'INSERT'
    elseif a:mode ==? 'n'
        return 'NORMAL'
    elseif a:mode ==? 'v'
        return 'VISUAL'
    endif
    return 'UNKNOWN'
endfunction

" Status Line
hi User1 cterm=NONE ctermbg=233 ctermfg=202 gui=NONE guibg=#121212 guifg=#ff5f00
hi User2 cterm=NONE ctermbg=233 ctermfg=240 gui=NONE guibg=#121212 guifg=#585858
hi User3 cterm=NONE ctermbg=232 ctermfg=233 gui=NONE guibg=#121212 guifg=#ffaf00

if has('statusline')
    set statusline=
    set statusline+=%1*                               " <-- Orange
    set statusline+=[%{toupper(mode())}]\             " Show the current mode
    set statusline+=%q                                " Quickfix List, Location List, or empty
    set statusline+=%*                                " <-- Clear highlighting
    set statusline+=%<%F\                             " Fuil path to the file in the buffer
    set statusline+=%1*                               " <-- Orange
    set statusline+=%m\                               " Modified flag (hide if empty)
    set statusline+=%2*                               " <-- Gray/italic
    set statusline+=%{fugitive#statusline()}          " Git status (hide if empty)
    set statusline+=%*                                " <-- Clear highlighting
    set statusline+=%=                                " Left ------------------------ Right
    set statusline+=%*                                " <-- Clear highlighting
    set statusline+=%3*                               " <-- Yellow
    set statusline+=%{SyntasticStatuslineFlag()}\     " Syntastic status
    set statusline+=%2*                               " <-- Gray/italic
    set statusline+=%r                                " Read-only flag (hide if empty)
    set statusline+=%y                                " Type of file
    set statusline+=\                                 " One space
    set statusline+=%p%%\                             " Percentage through file by line
    set statusline+=%l,%c                             " Line, Column
    set statusline+=%*                                " <-- Clear highlighting
endif

nnoremap <BS> :noh<CR><BS>

" jedi configuration
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#auto_vim_configuration = 0

" \tl - Toggle taglist
nnoremap <leader>tl :TlistToggle<cr>

set scrolloff=1
set sidescrolloff=5
set display+=lastline

" Make sure ctrlp shows hidden files
let g:ctrlp_show_hidden = 1

set history=1000

set noshowmode
