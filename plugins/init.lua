-- custom/plugins/init.lua
return {
   ["elkowar/yuck.vim"] = { ft = "yuck" },
   ["kevinhwang91/rnvimr"] = {},
   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
              config = function()
         require("custom.plugins.null-ls").setup()
      end,
   },
   ["MunifTanjim/prettier.nvim"] = {},
   ["wakatime/vim-wakatime"] = {},
   ["simrat39/symbols-outline.nvim"] = {},
   ["nvim-telescope/telescope-ui-select.nvim"] = {},
   ["windwp/nvim-spectre"] = {},
}
