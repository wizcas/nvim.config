local personal_wiki = {
  path = '~/Dropbox/footprints/wiki/me',
  syntax = 'markdown',
  ext = 'md'
}
local dev_wiki = {
  path = '~/Dropbox/footprints/wiki/dev',
  syntax = 'markdown',
  ext = 'md'
}
local compass_wiki = {
  path = '~/Dropbox/footprints/wiki/compass',
  syntax = 'markdown',
  ext = 'md'
}
vim.g.vimwiki_list = { personal_wiki, dev_wiki, compass_wiki }

local keymap = vim.api.nvim_set_keymap
keymap('n', '<LocalLeader>t', ':VimwikiToggleListItem<CR>', {
  noremap = true,
  silent = true
})
