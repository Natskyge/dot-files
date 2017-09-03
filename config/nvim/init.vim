"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/natskyge/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/natskyge/.config/nvim/dein')
  call dein#begin('/home/natskyge/.config/nvim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/natskyge/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('raimondi/delimitmate')
  call dein#add('scrooloose/nerdtree')
  call dein#add('tpope/vim-sensible')
  call dein#add('bling/vim-bufferline')
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 }) 
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
  call dein#add('junegunn/rainbow_parentheses.vim')
  call dein#add('kovisoft/slimv')
  call dein#add('vim-syntastic/syntastic')

  " You can specify revision/branch/tag.

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"Plugin setup-----------------------------

"Deoplete
call deoplete#enable()
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"FZF
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \ }
let $FZF_DEFUALT_COMMAND='ag --depth 10 --hiden --ignore .git -f -g ""'

"Rainbow paren
augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END

"Paredit
let g:paredit_electric_return=0

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"End plugin setup-------------------------



"Keybindings------------------------------

" Set <leader> to SPC
let mapleader=" "

" Buffers, use <leader>b + key too:
  "n - Switch to the next buffer
  nnoremap <leader>bn :bnext!<CR>
  "p - Switch to the previouse buffer
  nnoremap <leader>bp :bprev!<CR>
  "d - Kill current buffer
  nnoremap <leader>bd :bd!<CR>

" Windows, use <leader>w + key too:
  set splitbelow
  set splitright
  "v - Opens a veritcal split on the right
  nnoremap <leader>wv :vsp!<cr>
  "s - Opens a horizontal split below
  nnoremap <leader>ws :split!<cr>
  "d - Close split
  nnoremap <leader>wd :close!<cr>
  "h/j/k/l - Navigate among windows
  nnoremap <leader>wk :wincmd k<CR>
  nnoremap <leader>wj :wincmd j<CR>
  nnoremap <leader>wh :wincmd h<CR>
  nnoremap <leader>wl :wincmd l<CR>

" Files, use <leader>f + key too:
  "f - Opens a buffer to search for files in the current directory.
  nnoremap <leader>ff :FZF<cr>
  "h - Opens a buffer to search for files in the home directory.
  nnoremap <leader>fh :FZF ~/<cr>
  "s - Save the current file
  nnoremap <leader>fs :w!<CR>
  "x - Save the current file and quit
  nnoremap <leader>fx :x!<CR>
  "n - Create new file
  nnoremap <leader>fn :e! 
  "t - Open tree file browser
  nnoremap <leader>ft :NERDTreeToggle<CR>

" The init.vim file
  "<leader> f e d - Open your init.vim
  nnoremap <leader>fed :e! ~/.config/nvim/init.vim<cr>

" Quit with <leader> q
  nnoremap <leader>q :q!<CR>

" Open command line with <leader><leader>
  nnoremap <leader><leader> :

" Use <leader> l + letter to turn grammar checking on
  "d - Turn on danish grammar checking
  nnoremap <leader>ld :set spell spelllang=da<CR>
  "e - Turn on english grammar checking
  nnoremap <leader>le :set spell spelllang=en_us<CR>
  "n - Turn of grammar checking
  nnoremap <leader>ln :set spell spelllang=""<CR>

"End keybindings--------------------------


"Colorscheme------------------------------
"
set t_Co=256
set background=dark
hi Normal ctermbg=none
hi LineNr ctermfg=8

"End colorscheme--------------------------


"Misc-------------------------------------
"
"Set number line
set nu

"Status bar setup
set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c-%v\ %)%P
hi StatusLine ctermbg=NONE cterm=NONE

"Set unicode encoding, just to be sure
set encoding=utf-8

" Tabs
  "show existing tab with 4 spaces width
  set tabstop=4
  "when indenting with '>', use 4 spaces width
  set shiftwidth=4
  "On pressing tab, insert 4 spaces
  set expandtab

"End misc---------------------------------


