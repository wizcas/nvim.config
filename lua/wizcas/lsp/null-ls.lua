local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/code_actions
local code_actions = null_ls.builtins.code_actions

null_ls.setup({
  debug = false,
  sources = {
    code_actions.eslint_d,
    formatting.prettier.with({
      extra_args = { "--single-quote" },
      prefer_local = "node_modules/.bin",
    }),
    formatting.black.with({ extra_args = { "--fast" } }),
    formatting.stylua,
    formatting.eslint_d,
    -- diagnostics.flake8
  },
})
