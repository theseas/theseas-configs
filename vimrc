" Author: Theseas Maroulis
 
 
" Automatic reloading of .vimrc
" autocmd! BufWritePost ~/.vim/vimrc source %
" autocmd! bufwritepost ~/.vimrc source %
 

" enter the current millenia
set nocompatible
 
" Quick quit command
" noremap <Leader>e :quit<CR> " Quit current window
" noremap <Leader>E :qa!<CR> " Quit all windows
 
" easier moving between tabs
" map <Leader>n <esc>:tabprevious<CR>
" map <Leader>m <esc>:tabnext<CR>

" Change greek to english characters in normal mode
set langmap=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR,ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ,αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj,κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz
" set langmap=QWΕΡΤΥΘΙΟΠΑΣΔΦΓΗΞΚΛΖΧΨΩΒΝΜqwερτυθιοπασδφγηξκλζχψωβνμ;QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm

" Map jj to <ESC> in insert mode
imap jj <Esc>
imap ξξ <Esc>
 
" Color scheme
set t_Co=256
"color wombat256mod
colors default
"set background=dark
 
" Enable syntax highlighting
filetype plugin on
syntax on

" Finding files:

" Search down into subfolders
" provides tab-completion for all file-realted tasks
" set path+=**

" Display all matching files when we tab complete
set wildmenu
" set wildmode=longest

" Tag Jumping

" Create the 'tags' file
command Ctags !ctags -R .
 
" Showing line numbers and length
set number " show line numbers
set relativenumber
" increase performance of relativenumbers
set lazyredraw

set tw=80 " width of document (used by gd)
set nowrap " don't automatically wrap on load
set fo-=t " don't automatically wrap text when typing
"set colorcolumn=80
"highlight ColorColumn ctermbg=0
 
 
" Useful settings
set history=700
set undolevels=700
 
 
" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase
 
 
" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile
 
 
" Pathogen
"call pathogen#infect()

" Tab and Indent config
set tabstop=4 " width of TAB \t
set shiftwidth=4 " width of indent
set expandtab " make indent hard tabs
set autoindent " copies the indent of the previous line
filetype plugin indent on " indent code based on filetype
" enable omni-complition
set omnifunc=syntaxcomplete#Complete

" ============================================================================
" Python IDE Setup
" ============================================================================

 
" Settings for vim-powerline
"set laststatus=2
 
 
" Python folding
set nofoldenable
 
"Pydoc Support
" let g:pydoc_open_cmd = 'vsplit'
" let g:pydoc_cmd = '/usr/bin/pydoc'
 
 
"Fix Arrow keys for screen
"imap <ESC>oA <ESC>ki
"imap <ESC>oB <ESC>ji
"imap <ESC>oC <ESC>li
"imap <ESC>oD <ESC>hi
 
"Enable mouse support
set mouse=a

" highlight current line
set cursorline

" treat svelte files as html
au! BufNewFile,BufRead *.svelte set ft=html

colorscheme industry
set nocursorline
if has("gui_running")
    set gfn=Monospace\ Regular\ 18
endif

" CtrlP Options
set wildignore+=./assets/*,./protected/uploads/*,*/node_modules/*,./logs/*,./vendor/*
let g:ctrlp_max_files=0

" add files that is in the git only
let g:ctrlp_user_command = [
    \ '.git', 'cd %s && git ls-files . -co --exclude-standard',
    \ 'find %s -type f'
    \ ]
