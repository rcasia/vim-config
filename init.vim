
if has('win32')
   let configDir = $HOME . '/AppData/Local/nvim'
else
   let configDir = $HOME . '/.config/nvim'
endif

exe ' source ' . configDir . '/lua/user/plugins.vim'
exe ' source ' . configDir . '/lua/user/options.vim'
exe ' source ' . configDir . '/plug-config/coc.vim'
lua require("user.treesitter")
lua require("user.which-key")
lua require("user.mappings")
