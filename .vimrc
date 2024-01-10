syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set hlsearch
set incsearch
set scrolloff=8
set updatetime=1000
let loaded_matchparen = 1
let mapleader = " "

" Plugins:
call plug#begin('~/.vim/plugged') "https://github.com/junegunn/vim-plug
Plug 'mileszs/ack.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'git@github.com:Valloric/YouCompleteMe.git' " To run with pyenv this requires the following env to be set: export PYTHON_CONFIGURE_OPTS="--enable-framework"
Plug 'mbbill/undotree'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Requires node
" Plug 'tweekmonster/gofmt.vim'
" Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'

Plug 'rose-pine/vim'
Plug 'morhetz/gruvbox'
call plug#end()


" ColorSchemes:
colorscheme rosepine
set background=dark


" Keymaps:
:imap <C-l> <C-[>
:imap kl <esc>
:imap lk <esc>

nnoremap ss :w<CR>
nnoremap qq :q<CR>
nnoremap <S-Q> :q!<CR>

" if executable('rg')
"     let g:rg_derive_root='true'
" endif

let g:vrfr_rg = 'true'
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25


" ack.vim
" Options include:
 " --vimgrep -> Needed to parse the rg response properly for ack.vim
 " --type-not sql -> Avoid huge sql file dumps as it slows down the search
 " --smart-case -> Search case insensitive if all lowercase pattern, Search case sensitively otherwise
 let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'
 " Auto close the Quickfix list after pressing '<enter>' on a list item
 let g:ack_autoclose = 0
 " Any empty ack search will search for the work the cursor is on
 let g:ack_use_cword_for_empty_search = 1
 " Don't jump to first match
 cnoreabbrev Ack Ack!
 " Maps <leader>/ so we're ready to type the search keyword
 nnoremap <Leader>/ :Ack!<Space>
 " Navigate quickfix list with ease
 nnoremap <silent> [q :cprevious<CR>
 nnoremap <silent> ]q :cnext<CR>


" CTRLP
let g:ctrlp_working_path_mode = 'r'  " c = current directory, r = nearest ancestor that contains a .git folder
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|obj)|(\.(swp|ico|git|svn))$'
let g:ctrlp_use_caching = 1
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

nnoremap <leader>r :CtrlPMRU<CR>      " Recent Files
nnoremap <leader>b :CtrlPBuffer<CR>   " Open Files
" :help ctrlp-commands  or :help ctrlp-extensions
" CTRLP END


" NERDTree --- {{{
nnoremap <silent> <leader>f :NERDTreeToggle<CR>
" }}}


" wincmd
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>nc :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <leader>= :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

" YouCompleteMe
nnoremap <silent> <leader>gr :YcmCompleter GoToReferences<CR>

let g:coc_disable_startup_warning = 1

" Navigate quickfix list with ease
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>
