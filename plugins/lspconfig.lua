local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
-- local servers = {
--         -- lua stuff
--         "lua-language-server",
--         "stylua",
--
--         -- web dev
--         "css-lsp",
--         "html-lsp",
--         "typescript-language-server",
--         "vue-language-server",
--         "deno",
--         "emmet-ls",
--         "json-lsp",
--         --compiled languages
--         "jdtls",
--         "gopls",
--         "rust-analyzer",
--         "clangd",
--         -- shell
--         "shfmt",
--         "shellcheck",
-- }

local servers = {
  "sumneko_lua",
  "rust_analyzer",
  "tsserver",
  -- "jdtls",
  "vuels",
  -- "cssls",
  -- "tailwindcss",
  "gopls",
  -- "emmet_ls",
  -- "eslint",
  -- "clangd",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
   -- local servers = { "html", "cssls","vuels","clangd","tsserver","emmet_ls","jdtls","gopls","rust-analyzer"}
