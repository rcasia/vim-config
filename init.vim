
if has('win32')
   let configDir = $HOME . '/AppData/Local/nvim'
else
   let configDir = $HOME . '/.config/nvim'
endif

exe ' source ' . configDir . '/plug-config/vim/plugins.vim'
exe ' source ' . configDir . '/plug-config/vim/options.vim'
exe ' source ' . configDir . '/plug-config/vim/coc.vim'

exe 'luafile ' . configDir . '/plug-config/lua/mappings.lua'
exe 'luafile ' . configDir . '/plug-config/lua/treesitter.lua'
exe 'luafile ' . configDir . '/plug-config/lua/which-key.lua'
exe 'luafile ' . configDir . '/plug-config/lua/toggleterm.lua'
exe 'luafile ' . configDir . '/plug-config/lua/nvim-test.lua'
exe 'luafile ' . configDir . '/plug-config/lua/plenary.lua'
