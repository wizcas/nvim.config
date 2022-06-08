local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "wizcas.lsp.configs"
require("wizcas.lsp.handlers").setup()
require "wizcas.lsp.null-ls"
