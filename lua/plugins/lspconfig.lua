local lsp          = require("lspconfig")
local keymap       = vim.keymap.set
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local function on_attach()
  keymap("n", "K",  vim.lsp.buf.hover,            { buffer = 0 }) --> description
  keymap("n", "cn", vim.lsp.buf.rename,           { buffer = 0 }) --> change name
  keymap("n", "gd", vim.lsp.buf.definition,       { buffer = 0 }) --> goto definition
  keymap("n", "ca", vim.lsp.buf.code_action,      { buffer = 0 }) --> code action
  keymap("n", "gi", vim.lsp.buf.implementation,   { buffer = 0 }) --> goto implementation
  keymap("n", "ej", vim.diagnostic.goto_next,     { buffer = 0 }) --> goto next error
  keymap("n", "ek", vim.diagnostic.goto_prev,     { buffer = 0 }) --> goto previous error
  keymap("n", "et", ":Telescope diagnostics<CR>", { buffer = 0 }) --> telescope error
end

-- C
lsp.clangd.setup{
  capabilities = capabilities,
  on_attach = on_attach
}

-- Lua
lsp.lua_ls.setup{
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      runtime     = { version = "LuaJIT" },
      diagnostics = { globals = { "vim" } },
      workspace   = { vim.api.nvim_get_runtime_file("", true) },
      telemetry   = { enable = false }
    }
  }
}
