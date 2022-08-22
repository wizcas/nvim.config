local isVsCode = vim.fn.exists('g:vscode')
print('isVsCode' .. isVsCode .. 'type' .. type(isVsCode))

require "wizcas.options"
require "wizcas.keymaps"
require "wizcas.plugins"

if not isVsCode or isVsCode == 0 then
  require "wizcas.cursor"
  -- Color scheme
  require "wizcas.themes.ayu"
  require "wizcas.themes.tokyonight"
  require "wizcas.colorscheme" -- apply the scheme at last

  -- Plugin configs
  require "wizcas.cmp"
  require "wizcas.lsp"
  require "wizcas.telescope"
  require "wizcas.treesitter"
  require "wizcas.autopairs"
  require "wizcas.comment"
  require "wizcas.gitsigns"
  require "wizcas.nvim-tree"
  require "wizcas.bufferline"
  require "wizcas.lualine"
  require "wizcas.toggleterm"
  require "wizcas.project"
  require "wizcas.impatient"
  require "wizcas.indentline"
  require "wizcas.alpha"
  require "wizcas.whichkey"
  require "wizcas.autocommands"
  require "wizcas.auto-session"
  require "wizcas.telekasten"
  require "wizcas.wiki"
  -- require "wizcas.scroll"
else
  require "wizcas.autopairs"
  require "wizcas.comment"
  require "wizcas.impatient"
  require "wizcas.vscode-keys"
  require "wizcas.wiki"
end
