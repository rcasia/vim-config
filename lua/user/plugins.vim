let g:coc_disable_startup_warning = 1


"""" AUTOMATIC PLUGIN INSTALLATION
"
" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
"
" Install vim-plug if not found
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


call plug#begin()

Plug 'junegunn/vim-easy-align'

Plug 'dhruvasagar/vim-open-url'

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'folke/which-key.nvim'

Plug 'preservim/nerdtree'

Plug 'APZelos/blamer.nvim'

Plug 'nvim-lua/plenary.nvim' " Dependency
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

Plug 'airblade/vim-gitgutter'

Plug 'vim-test/vim-test'

Plug 'akinsho/toggleterm.nvim'

call plug#end()

let g:blamer_enabled = 1
