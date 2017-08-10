"[vim-plug]{{{
"starts vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/paredit.vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-sensible'
Plug 'bling/vim-bufferline'

"Initialize pluginsystem
call plug#end()
"}}}



"[Keybindings]{{{
" Set map leader to space
let mapleader=" "

" Use space + [hjkl] to select active split
nmap <silent> <leader>k :wincmd k<CR>
nmap <silent> <leader>j :wincmd j<CR>
nmap <silent> <leader>h :wincmd h<CR>
nmap <silent> <leader>l :wincmd l<CR>

" Us CTRL + [jk] to switch between buffers
nnoremap <C-K> :bnext<CR>
nnoremap <C-J> :bprev<CR>

" Use space + buttons to access common terminal commands
nnoremap <leader>d :bd!<CR>
nnoremap <leader>x :x!<CR>
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q!<CR>
nnoremap <leader>e :e! 
nnoremap <leader>v :vsp! 
nnoremap <leader>s :split! 

" Use space + number to turn grammar checking on
nnoremap <leader>1 :set spell spelllang=da<CR>
nnoremap <leader>2 :set spell spelllang=en_us<CR>
nnoremap <leader>3 :set spell spelllang=""<CR>

" Open NerdTree with ctrl w
map <C-w> :NERDTreeToggle<CR>
" }}}



"[colorscheme]{{{
set t_Co=256
set background=dark
hi Normal ctermbg=none



hi LineNr ctermfg=8

"}}}



"[misc]{{{
"set number line
set nu

"Status bar setup
set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c-%v\ %)%P
hi StatusLine ctermbg=NONE cterm=NONE

" set unicode encoding, just to be sure
set encoding=utf-8
"}}}
