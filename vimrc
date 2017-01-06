set t_Co=256
"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('$HOME/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:

NeoBundle 'Shougo/neosnippet.vim'

NeoBundle 'terryma/vim-expand-region'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'bling/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'bling/vim-airline'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'
set laststatus=2
NeoBundle 'Chiel92/vim-autoformat'
NeoBundle 'NLKNguyen/papercolor-theme'
NeoBundle 'altercation/vim-colors-solarized'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


set number
syntax on
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlPMRU<CR>
nmap <Leader><Leader> V
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
vmap v <Plug>(expand_region_expand)
vmap <Leader>v <Plug>(expand_region_shrink)
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>
map <c-d> :sh<cr>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
noremap l h
noremap ; l
noremap h ;
cmap w!! w !sudo tee > /dev/null %
set splitbelow
set splitright
set paste

set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2
set backspace=indent,eol,start

hi CursorLine   cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorcolumn!<CR>
set cursorline
"let g:solarized_termcolors=256
"set background=dark
"colorscheme solarized
