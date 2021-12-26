" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
" @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'preservim/nerdcommenter'
Plug 'vim-python/python-syntax'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'preservim/nerdcommenter'

" COC
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Tabs
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

Plug 'nvim-lualine/lualine.nvim'

" ALE
Plug 'w0rp/ale'

" Scroll
Plug 'dstein64/nvim-scrollview'

" Brackets
Plug 'jiangmiao/auto-pairs'

" Float Terminal
Plug 'voldikss/vim-floaterm'

call plug#end()
" @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages
set shortmess+=c
inoremap <expr> <tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

set encoding=UTF-8

source ~/start_lualine.vim

" Mouse 
set mouse=a

" NERDTree -------------------------------------------------------------------
nmap <F6> :NERDTreeToggle<CR>

" ALE
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace']
\}


" Theme ----------------------------
syntax on
colorscheme desert

" NVim-R  --------------------------
" https://github.com/jamespeapen/Nvim-R

" Language Client NeoVim
" Assign control =
" let R_nvimpager = "horizontal"
let R_assign = 0

" R Window anways vertical
let R_rconsole_width = 120
let R_min_editor_width = 120

" nerdcommenter -------------------- 
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

nnoremap <silent> <leader>c} V}:call NERDComment('x', 'toggle')<CR>
nnoremap <silent> <leader>c{ V{:call NERDComment('x', 'toggle')<CR>

" Snakemake ------------------------
" https://github.com/ShaiberAlon/snakemake-vim
au BufNewFile,BufRead Snakefile set syntax=snakemake
au BufNewFile,BufRead *.rules set syntax=snakemake
au BufNewFile,BufRead *.snakefile set syntax=snakemake
au BufNewFile,BufRead *.snake set syntax=snakemake
au BufNewFile,BufRead *.smk set syntax=snakemake


