-- custom/plugins/init.lua
return {
   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugins.null-ls").setup()
      end,
   },
   ["kevinhwang91/rnvimr"] = {},
   ["elkowar/yuck.vim"] = { ft = "yuck" },
   ["MunifTanjim/prettier.nvim"] = {},
   ["wakatime/vim-wakatime"] = {},
   ["simrat39/symbols-outline.nvim"] = {},
   ["nvim-telescope/telescope-ui-select.nvim"] = {},
   ["windwp/nvim-spectre"] = {},
   ["williamboman/mason.nvim"] = {},
  --  ["williamboman/mason-lspconfig.nvim"] = {
  --    config = function()
  --     require("mason-lspconfig").setup({
  --       ensure_installed = { "sumneko_lua", "rust_analyzer" }
  --     })
  --   end
  --  },
  --  ["neovim/nvim-lspconfig"] = {
  --   config = function()
  --     -- require "plugins.configs.lspconfig"
  --     require "custom.plugins.lspconfig"
  --   end,
  -- },
  -- ["williamboman/nvim-lsp-installer"] = {}
}
