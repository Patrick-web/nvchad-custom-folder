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
   ["MunifTanjim/prettier.nvim"] = {}
}
