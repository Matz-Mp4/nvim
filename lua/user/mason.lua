local status_ok, mason = pcall(require, "mason")
if not status_ok then
  return
end


mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    },

    keymaps = {
      toggle_package_expand = "<CR>",
      install_package = "i",
      update_package = "u",
      check_package_version = "c",
      update_all_packages = "U",
      check_outdated_packages = "C",
      uninstall_package = "X",
      cancel_installation = "<C-c>",
      apply_language_filter = "<C-f>",
    },
  }
})


require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "rust_analyzer", "html", "jdtls", "jsonls", "clangd", "pyright" },
  automatic_installation = true,
}
