set nocompatible
filetype off

" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!mkdir -p ~/.vim/autoload'
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin()

" Git support
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

Plug 'tpope/vim-abolish'

" comment helper
Plug 'scrooloose/nerdcommenter'

Plug 'ryanoasis/vim-devicons'

" file browser
Plug 'jlanzarotta/bufexplorer'

" color schemes
Plug 'clinstid/jellybeans.vim'
Plug 'clinstid/vim-darkspace'
Plug 'clinstid/vylight.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasiser/vim-code-dark'

" markdown support
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'

" Plug 'davidhalter/jedi-vim'
Plug 'hynek/vim-python-pep8-indent'

Plug 'majutsushi/tagbar'

"Plug 'mitsuhiko/vim-jinja'

" syntax support for ansible dialect of yaml
Plug 'pearofducks/ansible-vim'

" syntax support for ABNF
" Plug 'vim-scripts/abnf'
Plug 'skilstak/vim-abnf-utf8'

Plug 'stephpy/vim-yaml'

Plug 'groenewege/vim-less'
Plug 'hail2u/vim-css3-syntax'

Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'

Plug 'myhere/vim-nodejs-complete'
Plug 'moll/vim-node'

Plug 'elzr/vim-json'

" Plug 'clinstid/vim-behave'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'cespare/vim-toml'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'fatih/vim-go'

Plug 'towolf/vim-helm'

"Plug 'Shougo/vimproc.vim'

Plug 'airblade/vim-gitgutter'

" Plug 'artur-shaik/vim-javacomplete2'

"Plug 'vim-scripts/confluencewiki.vim'

" Typescript plugins
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'peitalin/vim-jsx-typescript'

" fzf from homebrew
" Plug '/usr/local/opt/fzf'

" fzf from git
Plug '~/.fzf'

" fzf actual vim plugin
Plug 'junegunn/fzf.vim'

" Plug 'xolox/vim-notes'
" Plug 'vim-scripts/utl.vim'

"Plug 'Raimondi/delimitMate'

Plug 'lifepillar/pgsql.vim'

"Plug 'dylon/vim-antlr'

" Plug 'isobit/vim-caddyfile'

Plug 'aklt/plantuml-syntax'

" Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'alok/notational-fzf-vim'

" Plug 'psf/black', { 'branch': 'master' }
Plug 'psf/black', { 'tag': '19.10b0' }


" HOCON == typesafe config
" Plug 'GEverding/vim-hocon'

Plug 'clinstid/mako.vim'

" Live markdown preview
Plug 'shime/vim-livedown'

" Pair brackets and quotes
" Plug 'tpope/vim-surround'
"Plug 'jiangmiao/auto-pairs'
"Plug 'tpope/vim-endwise'

" Plug 'aserebryakov/vim-todo-lists'

Plug 'vim-scripts/haproxy'

" Plug 'junegunn/goyo.vim'

" Plug 'dkarter/bullets.vim'

" Bazel plugins
Plug 'google/vim-maktaba'
Plug 'bazelbuild/vim-bazel'

Plug 'clinstid/nginx.vim'

"Plug 'tweekmonster/startuptime.vim'

"Plug 'mogelbrod/vim-jsonpath'

Plug 'hashivim/vim-terraform'

"Plug 'will133/vim-dirdiff'

Plug 'jvirtanen/vim-hcl'

Plug 'dbakker/vim-projectroot'

Plug 'preservim/nerdtree'

" Plug 'wellle/context.vim'

Plug 'rust-lang/rust.vim'

" All of your Plugins must be added before the following line
call plug#end()

" always show status bar
set laststatus=2
set statusline=%F%=%{fugitive#statusline()}\ (%{strlen(&ft)?&ft:'?'},%{&fenc},%{&ff})\ \ %-9.(%l,%c%V%)\ \ %<%P
hi StatusLine ctermbg=blue ctermfg=darkyellow

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
set smartindent

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
    " set ghr=0
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
        set guifont=Hack\ Nerd\ Font:h12
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
    let g:jellybeans_overrides = {
                \    'background': { 'guibg': '000000' },
                \}
    " colorscheme jellybeans
    " let g:airline_theme='jellybeans'
    " let g:airline_theme='serene'

    " darkspace
    let g:darkspace_italics = 1
    colorscheme darkspace
    let g:airline_theme='base16'

    " colorscheme base16-black-metal
    " let g:airline_theme='serene'

    " colorscheme base16-black-metal
    " let g:airline_theme='serene'

    " copy and paste to system clipboard
    imap <C-S-v> <C-r>+
    vmap <C-S-c> "+y
else
    set termguicolors
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

    " jellybeans settings
    " let g:jellybeans_overrides = {
    " \    'background': { 'ctermbg': 'NONE', '256ctermbg': 'NONE' },
    " \}

    " colorscheme jellybeans
    " let g:airline_theme='jellybeans'
    " let g:airline_theme='serene'

    " darkspace
    let g:darkspace_italics = 1
    colorscheme darkspace
    let g:airline_theme='darkspace'
    " let g:lightline.colorscheme = 'darkspace'

    " gruvbox overrides
    " let g:gruvbox_contrast_dark='hard'
    " colorscheme gruvbox
    " highlight Normal ctermbg=None
    " let g:airline_theme='gruvbox'

    " Light colors
    " set background=light
    " colorscheme PaperColor
    " let g:airline_theme='papercolor'

    " copy and paste to system clipboard
    imap <C-S-v> <C-r>+
    vmap <C-S-c> "+y
endif


" show line numbers
set number
" set relativenumber

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

" toggle nerdtree
map <leader>e :NERDTreeToggle<cr>

" Show hidden files in NERDTree
let NERDTreeShowHidden=1

" Add a space after comments
" let NERDSpaceDelims=1

" remove trailing whitespace
map <leader>w :%s/\s\+$//e<cr>

" clear hlsearch
map <leader>q :set nohlsearch<cr>

autocmd BufEnter * silent! lcd %:p:h
set autochdir

" remote whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
" autocmd BufWritePre *.py :%s/\s\+$//e
" autocmd BufWritePre *.md :%s/\s\+$//e
" autocmd BufWritePre *.rb :%s/\s\+$//e
" autocmd BufWritePre *.js :%s/\s\+$//e

" mako files are mako
au BufNewFile,BufRead *.mako set filetype=mako

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

" typescript files
aut BufRead,BufNewfile *.tsx set filetype=typescript

" look for a tags file
set tags=tags;

" show tabs and trailing spaces
" set list
" set listchars=tab:»·,trail:·

" pymode options

" disable colorcolumn for pymode
" let g:pymode_options_colorcolumn = 0

"Show ruler at 100 character limit (change as needed)
" set colorcolumn=120


" disable folding
let g:pymode_folding = 0

let g:pymode_options_max_line_length = 120
let g:pymode_lint_ignore = "C901"
let g:pymode_virtualenv = 1
let g:pymode_options = 0

let g:syntastic_python_flake8_args = "--max-line-length=120"

" set spell
nmap <leader>so :set spell<cr>
nmap <leader>sf :set nospell<cr>

" faster redraw
set lazyredraw
set ttyfast

nmap <leader>sp :set paste<cr>
nmap <leader>np :set nopaste<cr>

" javascript libraries
let g:used_javascript_libs = 'angularjs,jquery'

" return to last position in previously edited file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Don't conceal quotes in JSON files
let g:vim_json_syntax_conceal = 0

" Highlight current line
set cursorline
set cursorcolumn

" vmap <C-c> "+y

set completeopt=longest,menuone,preview

if has("mouse_sgr")
    set ttymouse=sgr
else
    if !has('nvim')
        set ttymouse=xterm2
    end
end

set conceallevel=0

" disable folding for markdown files
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_auto_insert_bullets = 1
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_conceal = 0

" Markdown autoformatting
nmap <leader>tf :TableFormat<cr>

let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_guide_size = 1
nmap <leader>i :IndentGuidesToggle<cr>
nmap <leader>p :echo expand('%:p')<cr>

let python_highlight_all = 1


nnoremap <BS> :noh<CR><BS>

" jedi configuration
" let g:jedi#popup_on_dot = 0
" let g:jedi#popup_select_first = 0
" let g:jedi#auto_vim_configuration = 0

" \tb - Toggle tagbar
nnoremap <leader>tb :TagbarToggle<cr>

set scrolloff=5
set sidescrolloff=5
set display+=lastline

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


" autocmd! BufWritePost * Neomake

" nmap <leader>be :Unite buffer<cr>

" Session stuff
let g:session_autoload = "no"
let g:session_autosave = "yes"

nnoremap <leader>os :OpenSession<cr>

" Insert the current date
nmap <leader>id O<esc>"=strftime("# %b %d %Y\n")<CR>P<CR>i

nnoremap <silent> <leader>nv :NV<cr>
let g:nv_search_paths = ['~/Notes']

let g:notes_directories = ['~/.vim-notes']
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

set directory=$HOME/.vim/swapfiles//
set backupdir=$HOME/.vim/backup//

set wildignore+=bazel-bin/*,bazel-out/*

let g:black_linelength = 120

set rtp+=/usr/local/opt/fzf

" Find note
nmap <leader>fn :call fzf#run({'sink': 'e', 'dir': '~/Notes'})<cr>

" Sync notes
nmap <leader>sn :!~/bin/sync_notes<cr>

" fzf buffers
nmap <leader>bf :Buffers<cr>

" fzf History
nmap <leader>h :History<cr>
nmap <leader>mr :History<cr>

" fzf Filetypes
nmap <leader>ft :Filetypes<cr>

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

function Light()
    set background=light
    colorscheme vylight
    AirlineTheme minimalist
endfunction

function Dark()
    set background=dark
    let g:darkspace_italics = 1
    colorscheme darkspace
    AirlineTheme darkspace
endfunction

nmap <leader>ls :call Light()<cr>
nmap <leader>ds :call Dark()<cr>

command! ProjectFiles execute 'GFiles -c -o' s:find_git_root()

nmap <C-p> :ProjectFiles<cr>
nmap <leader>toc :GenTocGFM<cr>

set formatoptions=tcroqln
nnoremap <leader>k :exe 'Grg!' expand('<cword>')<cr>

nnoremap <leader>rg :<C-u>ProjectRootExe Rg<cr>

nnoremap <leader>nb Ofrom nose.tools import set_trace; set_trace()<esc>

set foldlevel=99

nmap <leader>mp :LivedownPreview<cr>

set updatetime=300

nmap <leader>te :terminal<cr>

let g:VimTodoListsDatesEnabled = 1

set regexpengine=0

" Start ag search from project root
let g:ag_working_path_mode="r"

let g:goyo_width = '120'
let g:goyo_height = '90%'
nnoremap <leader>go :Goyo<cr>

let g:airline#extensions#whitespace#enabled=0

nnoremap <leader>wl :e ~/Notes/worklog.md<cr>G

source ~/.vimrc-coc

" let g:python3_host_prog = '$HOME/.pyenv/versions/py3nvim/bin/python3'

" let g:vimwiki_list = [{'path': '~/vimwiki/',
                      " \ 'syntax': 'markdown', 'ext': '.md'}]
" let g:wiki_root = '~/Notes'

let g:python_host_prog = '$HOME/.pyenv/shims/python2'
let g:python3_host_prog = '$HOME/.pyenv/shims/python3'

iab <expr> nday strftime("## %F %a\n\n* _%H:%M:%S_")
iab <expr> nlog strftime("* _%H:%M:%S_")

autocmd BufWritePre *.py execute ':Black'

" set timeoutlen=1000 ttimeoutlen=0
