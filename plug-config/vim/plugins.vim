call plug#begin()

" Code Formatting
"Plug 'google/vim-maktaba'
"Plug 'google/vim-codefmt'
"Plug 'google/vim-glaive'

" Commenting Code
Plug 'tpope/vim-commentary'

" Project Root Directory
Plug 'airblade/vim-rooter'

Plug 'junegunn/vim-easy-align'

Plug 'dhruvasagar/vim-open-url'

Plug 'nvim-treesitter/nvim-treesitter'

" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'
Plug 'mfussenegger/nvim-jdtls'

Plug 'folke/which-key.nvim'

Plug 'preservim/nerdtree'

Plug 'APZelos/blamer.nvim'

Plug 'nvim-lua/plenary.nvim' " Dependency
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

Plug 'airblade/vim-gitgutter'

Plug 'akinsho/toggleterm.nvim'

Plug 'lukas-reineke/indent-blankline.nvim'

"Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'folke/zen-mode.nvim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'

Plug 'flazz/vim-colorschemes'

Plug 'github/copilot.vim'

" TDD
Plug 'vim-test/vim-test'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'antoinemadec/FixCursorHold.nvim'

call plug#end()
