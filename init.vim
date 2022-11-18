
if has('win32')
   let configDir = $HOME . '/AppData/Local/nvim'
else
   let configDir = $HOME . '/.config/nvim'
endif

" to ensure that plugins get installed first
exe ' source ' . configDir . '/plug-config/vim/plugins.vim'

" execute all vim files in the config directory
for file in glob(configDir . '/plug-config/vim/*.vim', 1, 1)
  exe ' source ' . file
endfor

" execute all the scripts in the lua folder
for file in glob(configDir . '/plug-config/lua/*.lua', 1, 1)
  exe 'luafile ' . file
endfor

