" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" call plug#begin('~/.vim/plugged')
call plug#begin()

" Make sure you use single quotes
Plug 'chrisbra/NrrwRgn'
Plug 'https://github.com/wesQ3/vim-windowswap'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'dikiaap/minimalist'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/spf13/vim-autoclose.git'
Plug 'mattn/emmet-vim'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'scrooloose/nerdcommenter'

" Initialize plugin system
call plug#end()

" Deoplete autocomplete 
let g:deoplete#enable_at_startup = 1

" Don't autoclose quotes on this file
let g:autoclose_vim_commentmode = 1

" Expand emmet expressions with ctrl+e ,
let g:user_emmet_leader_key='<C-E>'

" Search for dotfiles with ctrlp
let g:ctrlp_show_hidden = 1

" Don't search node modules with ctrlp
let g:ctrlp_custom_ignore = 'node_modules'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$|node_modules',
  \ }

" Ale fix lint errors on save
let g:ale_fix_on_save = 1
let g:ale_lint_delay = 200
let g:ale_javascript_eslint_executable = 'eslint --fix'

" Show line numbers
set number relativenumber

" Set color scheme
set t_Co=256
syntax on
filetype plugin on
colorscheme minimalist

" set filetypes as typescript.jsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=javascript.jsx

" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
set autoindent

" moves along rows, not lines
nnoremap j gj
nnoremap k gk

" let g:airline_theme='minimalist'
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1

map <C-n> :NERDTreeToggle<CR>
