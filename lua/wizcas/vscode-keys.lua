local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local vscodeCmds = {
  save = 'workbench.action.files.save',
  close = 'workbench.action.closeActiveEditor',
  revert = 'workbench.action.files.revert',
  showHover = 'editor.action.showHover',
  paramHints = 'editor.action.triggerParameterHints',
  prevTab = 'workbench.action.previousEditor',
  nextTab = 'workbench.action.nextEditor',
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
keymap("n", "H", getVsCodeCmd(vscodeCmds['prevTab']),opts)
keymap("n", "L", getVsCodeCmd(vscodeCmds['nextTab']),opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Easy system copy-paste --
keymap("n", "<leader>Y", '"+yg_', opts)
keymap("n", "<leader>y", '"+y', opts)
keymap("v", "<leader>y", '"+y', opts)
keymap("n", "<leader>p", '"+p', opts)
keymap("n", "<leader>P", '"+P', opts)
keymap("v", "<leader>p", '"+p', opts)

-- Paste in visual mode do not replace default yank --
keymap("v", "p", '"_dP', opts)
