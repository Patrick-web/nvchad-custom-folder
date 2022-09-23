-- custom/plugins/init.lua
return {
  ["github/copilot.vim"] = {},
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
   ["neovim/nvim-lspconfig"] = {
    config = function()
      -- require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["akinsho/flutter-tools.nvim"] = {
    requires = "nvim-lua/plenary.nvim",
    config = function ()
      require("flutter-tools").setup{} -- use defaults
    end
  },
  ["williamboman/nvim-lsp-installer"] = {
    ensure_installed = {
        "sumneko_lua",
        "rust_analyzer",
        "tsserver",
        "jdtls",
        "volar",
        "cssls",
        "tailwindcss",
        "gopls",
        "emmet_ls",
        "eslint",
        "clangd",
        -- "dartls"
    }
  }
}
