" Author: Theseas Maroulis

" Automatic reloading of init.vim
autocmd! BufWritePost ~/.config/nvim/init.vim source %

" Change greek to english characters in normal mode
set langmap=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR,ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ,αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj,κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz

" Map jj to <ESC> in insert mode
imap jj <Esc>
imap ξξ <Esc>

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
 
" Make search case insensitive
set ignorecase
set smartcase
 
" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile
 
" highlight current line
set cursorline

" treat svelte files as html
au! BufNewFile,BufRead *.svelte set ft=html
 
call plug#begin()

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

Plug 'mfussenegger/nvim-dap'

call plug#end()
