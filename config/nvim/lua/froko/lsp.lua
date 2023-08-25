-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.on_attach(function(client, bufnr)
  require("lsp-format").on_attach(client, bufnr)
end)
lsp.nvim_workspace()
lsp.setup()

