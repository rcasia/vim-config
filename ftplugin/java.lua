
-- If you started neovim within `~/dev/xy/project-1` this would resolve to `project-1`
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = vim.fn.expand('~/.cache/jdtls-workspace') .. project_name
local jdt_location = '/home/rcasia/Downloads/jdt-language-server-latest'
local java_17 = '/opt/java/jdk-17.0.5/bin/java'
local plugin_location = jdt_location .. '/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar' 
local lombok_location = '/home/rcasia/.config/nvim/dependencies/lombok.jar'

-- See `:help vim.lsp.start_client` for an overview of the supported `config` options.
local config = {
  -- The command that starts the language server
  -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
  cmd = {

    -- 💀
    java_17, 
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xms1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
		'-javaagent:' .. lombok_location,

    -- 💀
    '-jar', plugin_location,
    -- 💀
    '-configuration', jdt_location .. '/config_linux',
    -- 💀
    '-data', workspace_dir
  },

  -- 💀
  root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),
  settings = {
    java = {
    }
  },
  init_options = {
    bundles = {}
  },
}
require('jdtls').start_or_attach(config)

vim.api.nvim_set_keymap('n', 'r','<cmd>lia vim.lsp.buf.rename()<CR>', {})
