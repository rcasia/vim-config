" Windows Directory: ~/AppData/Local/nvim

if has('win32')
   let configDir = $HOME . '/AppData/Local/nvim'
else
   let configDir = $HOME . '/.config/nvim'
endif


exe ' source ' . configDir . '/lua/user/plugins.vim'
exe ' source ' . configDir . '/lua/user/mappings.vim'
exe ' source ' . configDir . '/lua/user/options.vim'
lua require("user.treesitter")
