".vimrc

" dein.vim
if &compatible
    set compatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
call dein#begin(expand('~/.vim/dein'))
call dein#add('Shougo/dein.vim')
call dein#add('tomasr/molokai')
call dein#end()
filetype plugin indent on
if dein#check_install()
    call dein#install()
endif

" INSERT, NORMAL mode status line  color
augroup InsertHook
		autocmd!
		autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340	
		autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END

" 
inoremap ( ()<Left>
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [ []<Left>
inoremap " ""<Left>
"inoremap ' ''<Left>

" open Quickfix automatically
autocmd QuickFixCmdPost make,grep,grepadd,vimgrep,vimgrep copen

colorscheme molokai

nnoremap <space>b :w<CR>:make<CR>
nnoremap <space>r :make run<CR>
nnoremap <space>c :cclose<CR>
nnoremap <space>w :w<CR>
nnoremap <space>q :q<CR>
nnoremap <space>x :wq<CR>
nnoremap <space>p :w<CR>:bp<CR>
nnoremap <space>n :w<CR>:bn<CR>

" color
highlight LineNr ctermfg=239
highlight LineNr ctermbg=234
hi clear CursorLine
highlight CursorLine ctermbg=233

set clipboard=unnamed,autoselect
set ignorecase
set smartcase
set backspace=start,eol,indent
set shortmess=a
set showcmd
set hidden
set laststatus=2
set number
set ruler
set cursorline
set title
set t_Co=256
syntax on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
"set cindent
set noswapfile

