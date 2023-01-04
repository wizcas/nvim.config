require "wizcas.helpers"
require "wizcas.options"
require "wizcas.globals"
require "wizcas.plugins"

if not IsVsCode() then
  require "wizcas.keymaps"
  require "wizcas.cursor"
  -- Color schemes
  require "wizcas.themes.ayu"
  require "wizcas.themes.tokyonight"
  require "wizcas.colorscheme" -- apply the scheme at last

  -- Plugin configs
  if IS_COC then
    require "wizcas.coc"
  else
    require "wizcas.lsp"
    require "wizcas.cmp"
  end
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
  require "wizcas.neovide"
else
  print("Loading VSCode settings...")
  require "wizcas.autopairs"
  require "wizcas.comment"
  require "wizcas.impatient"
  require "wizcas.vscode-keys"
  require "wizcas.wiki"
end
