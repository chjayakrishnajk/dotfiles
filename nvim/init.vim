let mapleader = "\<Space>"
autocmd TextChanged,TextChangedI <buffer> silent write
call plug#begin()
noremap h h
noremap n j
noremap e k
noremap i l

noremap h h
noremap j n
noremap k e
noremap l i

"Visual
vnoremap h h
vnoremap n j
vnoremap e k
vnoremap i l


vnoremap h h
vnoremap j n
vnoremap k e
vnoremap l i

"Move Selected Text
vnoremap N :m '>+1<CR>gv=gv
vnoremap E :m '<-2<CR>gv=gv

"Window
nnoremap , <C-w>
nnoremap ,, <C-w><C-w>
noremap ,h <C-w>h
noremap ,n <C-w>j
noremap ,e <C-w>k
noremap ,i <C-w>l

"Buffer Switch
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

"Copy text to Clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y

"Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

"UndoTree
nnoremap <leader>u :UndotreeToggle<CR>

"Plugins
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'mbbill/undotree'
Plug 'prabirshrestha/vim-lsp' " async lsp support
Plug 'mattn/vim-lsp-settings' " lsp auto-configs
Plug 'prabirshrestha/asyncomplete.vim' " async completion
Plug 'prabirshrestha/asyncomplete-lsp.vim' " lsp source
Plug 'dense-analysis/ale' " Asynchronous Lint Engine (uses vim-lsp)
Plug 'sheerun/vim-polyglot' " syntax highlighting for all
Plug 'nvim-tree/nvim-tree.lua'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'dstein64/vim-startuptime'
Plug 'djoshea/vim-autoread'
Plug 'nvim-tree/nvim-tree.lua'

"NvimTree
noremap <leader>e :NvimTreeToggle<CR>

"set
set number
set relativenumber

call plug#end()

lua require'nvim-tree'.setup {}
colorscheme catppuccin-mocha
