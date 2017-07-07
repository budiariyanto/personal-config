call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Rykka/riv.vim'
"Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'raimondi/delimitmate'
Plug 'terryma/vim-multiple-cursors'
Plug 'ekalinin/Dockerfile.vim'
Plug 'conradirwin/vim-bracketed-paste'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
Plug 'kien/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'easymotion/vim-easymotion'
Plug 'altercation/vim-colors-solarized'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'
Plug 'fatih/molokai'
Plug 'chriskempson/base16-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'airblade/vim-gitgutter'
" Plug 'shougo/neocomplete.vim'
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make' }
" Plug 'valloric/youcompleteme'
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'mileszs/ack.vim'
Plug 'sjl/gundo.vim'
Plug 'fatih/vim-go'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'myusuf3/numbers.vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'leafgarland/typescript-vim'
call plug#end()

" Highlight text search result
set hlsearch
" Enable line number
set number
" Enable cursorline
set cursorline
" Set encoding to utf-8
set encoding=utf8
" Set max characters per line
set textwidth=80
" Enable case insensitive case search
set ignorecase
" Become case sensitive if we type uppercase
set smartcase
" Search scan will back to top if reach end of file
set wrapscan
" Set fileformat to unix explicitly
set fileformat=unix
" Show filename in titlebar
set title
" 2 lines above/below cursor when scrolling
set scrolloff=2
" Remember undo after quitting
set hidden
" Keep 50 lines of command history
set history=100
" Search incremently (search while typing)
set incsearch
" Default clipboard using X window clipboard.
" This clipboard settings is cross-platform.
" On Ubuntu, please install vim-gtk
set clipboard^=unnamed,unnamedplus
" Always showing bar at bottom
set laststatus=2
" Hide default mode display
set noshowmode
" Auto indent
set autoindent

let g:python3_host_prog = '/usr/bin/python3'

" Default tabbing
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Enable syntax highlighting
syntax on

" Indent on
filetype indent on
" Enable filetype checking
filetype plugin on

" Tab settings per file type.
autocmd Filetype go setlocal ts=4 sts=4 sw=4
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

set completeopt-=preview
"set omnifunc=syntaxcomplete#Complete
" Configure color scheme
" Support 256 color in terminal
" set t_Co=256
"let g:molokai_original = 1
" let g:rehash256 = 1
set termguicolors
" Set colorscheme to molokai
" Some great colorschemes:
" base16-eighties
" molokai
colorscheme base16-eighties
" Set mapleader to comma
let mapleader = ","

" Use markdown frontmatter
let g:vim_markdown_frontmatter = 1

" Numbers.vim
let g:numbers_exclude = ['tagbar', 'gundo', 'nerdtree']

" Deoplete
let g:deoplete#enable_at_startup = 1 

" Trigger ultisnips configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'

" Gundo
" Configure Gundo to use python3 instead of python2
let g:gundo_prefer_python3 = 1

" Lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'mode_map': { 'c': 'NORMAL' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'modified': 'LightlineModified',
      \   'readonly': 'LightlineReadonly',
      \   'fugitive': 'LightlineFugitive',
      \   'filename': 'LightlineFilename',
      \   'fileformat': 'LightlineFileformat',
      \   'filetype': 'LightlineFiletype',
      \   'fileencoding': 'LightlineFileencoding',
      \   'mode': 'LightlineMode',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }
function! LightlineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction
function! LightlineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? 'RO' : ''
endfunction
function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:p') ? expand('%:p') : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction
function! LightlineFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? '⎇'.' '.branch : ''
  endif
  return ''
endfunction
function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction
function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction
function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction
function! LightlineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction

" NERDTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" let g:syntastic_go_checkers = ['govet', 'errcheck']
" let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

let g:ale_linters = {
\   'typescript': ['tslint'],
\}


" Vim-go
let g:go_list_type = "quickfix"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

" Vim JSX
" JSX syntax highlighting support only on .jsx file extension by default. This
" configuration is to enable jsx syntax highlighting on .js files too.
let g:jsx_ext_required = 0

" Configure ack vim to use ag if ag available. If not, fallback to ack
if executable('ag')
 let g:ackprg = 'ag --vimgrep'
endif

" Keyboard shortcuts
" Select all text on buffer
map <C-a> <esc>ggVG<CR>
" Makes Ctrl-W close buffer/quit without save and warning
"map <C-W> :q!<CR>
" Shifting blocks configuration
" This indentation configuration makes
" shifting blocks remain in visual mode
vnoremap > >gv
vnoremap < <gv
nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnew<CR>
nnoremap tm :tabm<Space>
nnoremap td :tabclose<CR>
nnoremap H gT
nnoremap L gt
" nnoremap <C-p> :FZF<CR>
nnoremap <F2> :NumbersToggle<CR>
" Press F3 to save all
nnoremap <F3> :wa<CR>
nnoremap <F5> :GundoToggle<CR>
nnoremap <F7> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <F9> :Ack
