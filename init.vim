" Windows Directory: ~/AppData/Local/nvim

if has('win32')
   let configDir = $HOME . '/AppData/Local/nvim'
else
   let configDir = $HOME . '/.config/nvim'
endif


exe ' source ' . configDir . '/lua/user/plugins.vim'
exe ' source ' . configDir . '/lua/user/mappings.vim'
lua require("user.treesitter")
lua require("user.options")


