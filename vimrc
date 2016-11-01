"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/Felix/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/Felix/.vim/bundle'))

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
nnoremap <Leader>o :CtrlP<CR>
nmap <Leader><Leader> V
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
vmap v <Plug>(expand_region_expand)
vmap <Leader>v <Plug>(expand_region_shrink)
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>
nnoremap <CR> G
nnoremap <BS> gg
map <c-d> :sh<cr>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright
set paste
