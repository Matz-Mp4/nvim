local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

-- configure mason and it's LSP integration (provides the :LspInstall command)
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
  -- This is a default handler that will be called for each installed server (also for new servers that are installed during a session)
  function(server_name)
    if server_name then
      local lspconfig = require 'lspconfig'
      lspconfig[server_name].setup {}
    end
  end,
}
require("user.lsp.handlers").setup()
require("user.lsp.lsp-signature")
require("user.lsp.lsp-saga");
