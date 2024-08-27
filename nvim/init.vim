source $HOME/.config/nvim/plug-config/coc.vim

:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:filetype plugin indent on   
:syntax on                  
:set mouse=a                 
:set clipboard=unnamedplus   
:filetype plugin on
:set cursorline             
:set ttyfast            

call plug#begin()
 Plug 'dracula/vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'vim-airline/vim-airline'
 Plug 'preservim/nerdtree'
 Plug 'preservim/tagbar' 
 Plug 'nanotech/jellybeans.vim'
 Plug 'neoclide/coc.nvim'
 Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
 Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
 Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
 Plug 'neoclide/coc.nvim', {'branch':'release'}
call plug#end()

nnoremap <C-f> :NERDTreeToggle<CR>
nmap <C-g> :TagbarToggle<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <silent><C-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><C-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

set clipboard=unnamedplus
lua require("toggleterm").setup()

:colorscheme catppuccin-mocha

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:dashboard_default_executive = 'telescope'

" air-line "
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

