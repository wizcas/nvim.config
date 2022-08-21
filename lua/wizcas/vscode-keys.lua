local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

local vscodeCmds = {
  save = 'workbench.action.files.save',
  close = 'workbench.action.closeActiveEditor',
  revert = 'workbench.action.files.revert',
  showHover = 'editor.action.showHover',
  paramHints = 'editor.action.triggerParameterHints',
}

local function getVsCodeCmd(cmd)
  return "<Cmd>call VSCodeCall('" .. cmd .. "')<CR>"
end

keymap("n", "<leader>w", getVsCodeCmd(vscodeCmds['save']), opts)
keymap("n", "<leader>q", getVsCodeCmd(vscodeCmds['close']), opts)
keymap("n", "<leader>E", getVsCodeCmd(vscodeCmds['revert']), opts)
keymap("n", "<leader>h", ':noh<CR>', opts)
keymap("n", "K", getVsCodeCmd(vscodeCmds['showHover']), opts)
keymap("n", "gk", getVsCodeCmd(vscodeCmds['paramHints']), opts)
