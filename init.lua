require "wizcas.helpers"
require "wizcas.options"
require "wizcas.plugins"
--[[ require "wizcas.globals" ]]

if not IsVsCode() then
  require "wizcas.keymaps"
  require "wizcas.cursor"
  -- Color scheme
  require "wizcas.themes.ayu"
  require "wizcas.themes.tokyonight"
  require "wizcas.colorscheme" -- apply the scheme at last

  -- Plugin configs
  require "wizcas.lsp"
  require "wizcas.cmp"
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
  require "wizcas.gitlinker"
  if not IsWindows() then
    require "wizcas.telekasten"
  end
  require "wizcas.wiki"
  --[[ require "wizcas.coc" ]]
  require "wizcas.neovide"
else
  print("Loading VSCode settings...")
  require "wizcas.autopairs"
  require "wizcas.comment"
  require "wizcas.impatient"
  require "wizcas.vscode-keys"
  require "wizcas.wiki"
end

