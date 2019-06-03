if &term =~ '256color'
  " Disable Background Color Erase (BCE) so that color schemes
  " work properly when Vim is used inside tmux and GNU screen.
  set t_ut=
endif
set encoding=utf-8

if has('nvim')
  set runtimepath^=~/.vim runtimepath+=~/.vim/after
  let &packpath = &runtimepath
  let g:python3_host_prog="/usr/bin/python3"
endif

set nocompatible

"*****************************************************************************
"" Vim-Plug Plug-ins
"*****************************************************************************
call plug#begin()

" General Vim improvement
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'tpope/vim-repeat'
Plug 'skywind3000/asyncrun.vim'

" Moving around
Plug 'easymotion/vim-easymotion'
Plug 'elzr/vim-json'
Plug 'christoomey/vim-tmux-navigator'

" Status line
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Version control
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'rhysd/committia.vim'

" General code utility
Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'
Plug 'ntpeters/vim-better-whitespace'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '/usr/bin/fzf' | Plug 'junegunn/fzf.vim'
" For the ```", (, {, [``` symbols
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'

" Completion
Plug 'w0rp/ale'
Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \ }

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
" additional completion plugins
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'

Plug 'eagletmt/neco-ghc'
Plug 'octol/vim-cpp-enhanced-highlight'

"Haskell
Plug 'neovimhaskell/haskell-vim'

"Rust
Plug 'rust-lang/rust.vim'

"Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"Api Blueprint
Plug 'kylef/apiblueprint.vim'

"Markdown preview
"Plug 'mgor/vim-markdown-grip'
" Markdown pandoc highlighting
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" Toml
Plug 'cespare/vim-toml'

" Colorschmes
Plug 'junegunn/seoul256.vim'
Plug 'morhetz/gruvbox'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'chriskempson/base16-vim'
Plug 'connorholyday/vim-snazzy'

" Writting
Plug 'junegunn/goyo.vim'

call plug#end()


"*****************************************************************************
"" Global Configuration
"*****************************************************************************

filetype indent on

" Epitech
"let g:epi_login = 'engueh_a'
"let g:epi_name = 'Enguehard Galiee'
"nmap <leader>h :EpiHeader<CR>
"autocmd BufNewFile,BufRead *.h set filetype=cpp

" - CONFIG OPTIONS
"<EOL> formatting
set fileformats=unix,dos,mac

"Automatically reload files edited outside of vim
set autoread

"" .swp files configuration
set nobackup
set noswapfile

"search options
set hlsearch
set incsearch
set smartcase
set showmatch

set backspace=eol,start,indent

" Disable visualbell
set visualbell t_vb=

set splitright

set clipboard=unnamedplus
set mouse-=a
set hidden
set nofoldenable

if has('nvim')
  set inccommand=split
endif

"Automatically apply changes to .vimrc
autocmd! BufWritePost $MYVIMRC source $MYVIMRC

"*****************************************************************************
"" Indentation Configuration
"*****************************************************************************

"set autoindent smartindent
set smarttab
set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab
set listchars=tab:>.
"" Display tabs
set list

set cinoptions = ">1s-2sn-1s:1sl1sg1sh1st0i1sc1s(0"

" Indentation options for Haskell
autocmd Filetype haskell setlocal expandtab tabstop=4 shiftwidth=4

" Indentation options for protobuf
autocmd Filetype proto setlocal expandtab tabstop=4 shiftwidth=4

" Formating for rust
let g:rustfmt_autosave = 1

"*****************************************************************************
"" Styling
"*****************************************************************************
"let g:gruvbox_contrast_dark='soft'
" In order to have matching vim theme and shell theme using base 16
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
syntax on


"Minimum of lines for scoll offset on page
set scrolloff=5
set ruler
set number
set colorcolumn=80
""These two can cause major lag when scrolling
set relativenumber
set cursorline

"set iskeyword-=_

"hi Normal ctermbg=234
"Highlight matching parenthesis
"hi MatchParen cterm=bold ctermbg=blue
"highlight CursorLine ctermbg=239

"*****************************************************************************
"" Keybinds
"*****************************************************************************
let mapleader=","

inoremap <Up>       <NOP>
inoremap <Down>     <NOP>
inoremap <Left>     <NOP>
inoremap <Right>    <NOP>
noremap  <Up>       <NOP>
noremap  <Down>     <NOP>
noremap  <Left>     <NOP>
noremap  <Right>    <NOP>

nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

nnoremap <Leader>q :bp<CR>
nnoremap <Leader>w :bn<CR>
nnoremap <Leader>l :ls<CR>:b<space>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

vnoremap \ss y/<C-R>"<CR>

"" Clean search (highlight)
"nnoremap <silent> <leader><space> :noh<cr>

"" Move visual block || Might need a plug-in, this is kinda shitty
"vnoremap J :m '>+1<CR>gv=gv
"vnoremap K :m '<-2<CR>gv=gv


" Close buffer without closing the split
nnoremap <Leader>d :bp\|bd #<CR>

" No scrolling in insert mode
inoremap <ScrollWheelUp> <Nop>
inoremap <ScrollWheelDown> <Nop>

"*****************************************************************************
"" Plugin Configuration
"*****************************************************************************
" Easymotion
map <Leader><space> <Plug>(easymotion-prefix)

"Fugitive keybinds
nnoremap <C-K> :Gcommit<CR>
nnoremap <C-A> :Gwrite<CR>
nnoremap <C-P> :Gpush<CR>

"Language Client
" work around the lack of a global language client settings file:
" https://github.com/rust-lang/rls/issues/1324
" https://github.com/autozimu/LanguageClient-neovim/issues/431
" I primarily want that for the ability to set `build_on_save`,
" which I in turn want because of
" https://github.com/autozimu/LanguageClient-neovim/issues/603
let g:LanguageClient_settingsPath = expand('~/.config/nvim/lcs_settings.json')
let g:LanguageClient_serverCommands = {
    \ 'rust': ['/usr/bin/rls'],
    \ }
let g:LanguageClient_autoStart = 1
" Nice errors
let g:LanguageClient_diagnosticsDisplay = {
    \     1: {
    \         "name": "Error",
    \         "texthl": "ALEError",
    \         "signText": "✖",
    \         "signTexthl": "ErrorMsg",
    \         "virtualTexthl": "WarningMsg",
    \     },
    \     2: {
    \         "name": "Warning",
    \         "texthl": "ALEWarning",
    \         "signText": "⚠",
    \         "signTexthl": "ALEWarningSign",
    \         "virtualTexthl": "Todo",
    \     },
    \     3: {
    \         "name": "Information",
    \         "texthl": "ALEInfo",
    \         "signText": "ℹ",
    \         "signTexthl": "ALEInfoSign",
    \         "virtualTexthl": "Todo",
    \     },
    \     4: {
    \         "name": "Hint",
    \         "texthl": "ALEInfo",
    \         "signText": "➤",
    \         "signTexthl": "ALEInfoSign",
    \         "virtualTexthl": "Todo",
    \     },
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" Completion / ncm2
autocmd BufEnter * call ncm2#enable_for_buffer()
" Affects the visual representation of what happens after you hit <C-x><C-o>
" https://neovim.io/doc/user/insert.html#i_CTRL-X_CTRL-O
" https://neovim.io/doc/user/options.html#'completeopt'
"
" This will show the popup menu even if there's only one match (menuone),
" prevent automatic selection (noselect) and prevent automatic text injection
" into the current line (noinsert).
set completeopt=noinsert,menuone,noselect
" tab to select
" and don't hijack my enter key
inoremap <expr><Tab> (pumvisible()?(empty(v:completed_item)?"\<C-n>":"\<C-y>"):"\<Tab>")
inoremap <expr><CR> (pumvisible()?(empty(v:completed_item)?"\<CR>\<CR>":"\<C-y>"):"\<CR>")


" ALE
let g:ale_linters = {'rust': ['rls'], 'haskell': ['stack-build']}
let g:ale_fixers = {
      \ 'javascript': ['prettier', 'eslint'],
      \ 'css': ['prettier'],
      \}

let g:ale_fix_on_save = 1

" Vim Airline
"let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.left_sep='|'
let g:airline_symbols.right_sep='|'
let g:airline_symbols.readonly=''
"let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='angr'
 " For compatibility with Ctrl-Space
let g:airline_executable_preview = 1
set noshowmode

" Better Whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
highlight ExtraWhitespace ctermbg=red

" ctrlspace
set hidden
set showtabline=0
  " Use ag to do the glob searches
if executable("ag")
  let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif
let g:CtrlSpaceSymbols = { "File:": " ", "CTab": " ", "Tabs": " ", "BM": " ", "CS": " ", "Sin": " ", "All": " ", "Vis": " "}
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1

if has('nvim')
  " Neovim considers the Ctrl + Space bind as the null character by default
  nnoremap <C-Space> :CtrlSpace<CR>
endif

" Pandoc variables
let g:pandoc#syntax#codeblocks#embeds#langs = ["ruby", "c", "haskell", "bash=sh", "cpp", "javascript"]

" UltiSnip
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpForwardTrigger=""
let g:UltiSnipsJumpBackwardTrigger=""

" CtrlP
let g:ctrlp_working_path_mode = 'ra'

"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************
"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END


"*****************************************************************************
"" Functions
"*****************************************************************************
" Header insert function (from Morty) {
" Don't forget to set env variable EPI_NAME and EPI_LOGIN

function! EPIConfig(task)
    if a:task == "set"
    if expand("%") == "Makefile"
        execute "0read ~/.vim/headers/makefile"
    elseif expand("%:e") == "h"
        execute "0read ~/.vim/headers/h"
    elseif expand("%:e") == "c"
        execute "0read ~/.vim/headers/c"
    elseif expand("%:e") == "hpp"
        execute "0read ~/.vim/headers/e"
    elseif expand("%:e") == "s"
        execute "0read ~/.vim/headers/s"
    endif
    execute "%substitute,$FILE," . expand("%") . ",e"
    execute "%substitute,$FN," . '\U' . expand("%:t:r") . ",e"
    execute "%substitute,$FLDR," . expand("%:p:h:t") . ",e"
    execute "%substitute,$PATH," . expand("%:p:h") . ",e"
    execute "%substitute,$PROJ," . $PROJECT . ",e"
    execute "%substitute,$NAME," . $EPI_NAME . ",e"
    execute "%substitute,$NICK," . $EPI_LOGIN . ",e"
    execute "%substitute,$DATE," . strftime("%a %b %d %H:%M:%S %Y") . ",e"
    call EPIConfig("update")
    normal Go
    elseif a:task == "update"
    let cursor = getpos(".")
        execute "%substitute,Last update.*,Last update " . strftime("%a %b %d %H:%M:%S %Y") . " " . $EPI_NAME . ",e"
    call setpos(".", cursor)
    endif
endfunction

"autocmd! BufNewFile        *.{c,h,hpp},Makefile    call EPIConfig("set")
"autocmd! BufWritePre        *.{c,h,hpp},Makefile    call EPIConfig("update")
" }

"function! ProtectedHeader()
  " '%' is the filename relative to the current directory,
  " t is used to don't have the full path and only the filename
"  let filename=expand('%:t')
"  let splitted=split(filename, '\.')
"  if len(splitted) != 2
"    return
"  endif
"  let splitted[0]=toupper(splitted[0])
"  let splitted[1]=toupper(splitted[1])
"  echo "#ifndef " . splitted[0] . "_" . splitted[1] . "_"
"  echo "# define " . splitted[0] . '_' . splitted[1] . '_'
"  echo ""
"  echo "#endif /* !" . splitted[0] . '_' . splitted[1] . "_ */"
"endfunction

" Function for GNU style indentation (EMACS-like)
function! GnuIndent()
  setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1)}
  setlocal shiftwidth=2
  setlocal tabstop=8
endfunction

"au FileType c,h call GnuIndent()

"autocmd BufNewFile        *.{c,h} call GnuIndent()
"autocmd BufWritePre        *.{c,h} call GnuIndent()
