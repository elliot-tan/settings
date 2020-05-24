call plug#begin('~/.vim/plugged')

"""Plugins"""
Plug 'davidhalter/jedi-vim'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'

call plug#end()

"""Enable Plugins"""
filetype plugin on
filetype indent on


"""Jedi Config""""
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#popup_on_dot = 0

 """Nerdtree Config"""
"autocmd vimenter * NERDTree
map <C-I> :NERDTreeToggle<CR>

"""Emmet config"""
let g:user_emmet_leader_key=','

"""General Stuff""
syntax enable
set background=dark
set cursorline
set expandtab
set lazyredraw
set mouse=a
set number relativenumber
set nu rnu
set showcmd
set showmatch
set splitright
set splitbelow
set tw=80
set ttyfast
set wildmenu



"""Copy/Paste Binds"""
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+P

"""Folding Settings"""
set foldenable
set foldlevelstart=10
set foldnestmax=2
set foldmethod=indent

"""Indent Settings""
" Keep visual highlight when indenting multiple times.
vnoremap < <gv
vnoremap > >gv


"""Key Mapping"""
" Spacebar to open and close folds.
nnoremap <space> za
" " <leader> spacebar to open all folds.
nnoremap <leader><space> zR

""Split naaaaaav"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

autocmd BufNewFile,BufRead *.html setlocal nowrap sw=2 sts=2 ts=2
autocmd BufNewFile,BufRead *.css setlocal nowrap sw=2 sts=2 ts=2
autocmd BufNewFile,BufRead *.js set sw=2 sts=2 ts=2
autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript
autocmd FileType python set autoindent shiftwidth=4 softtabstop=4 tabstop=4
autocmd BufNewFile,Bufread .sh setlocal autoindent shiftwidth=4 softtabstop=4 tabstop=4
autocmd BufNewFile,BufRead *.cc setlocal sw=2 sts=2 ts=2 autoindent
autocmd BufNewFile,BufRead *.pbtxt setlocal sw=2 sts=2 ts=2 autoindent

"""Highlight trailing whitespace"""
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
