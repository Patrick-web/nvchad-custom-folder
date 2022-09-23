local pluginConfs = require "custom.plugins.configs"

local M = {}

M.mappings = require "custom.mappings"

M.ui = {
   theme = "aquarium",
   transparency = false,
}

M.plugins = {
   user = require "custom.plugins",
   override ={
      ["nvim-telescope/telescope.nvim"]  = pluginConfs.telescope,
      ["kyazdani42/nvim-tree.lua"] = pluginConfs.nvimtree,
      ["williamboman/mason"] = pluginConfs.mason,
      ["neovim/nvim-lspconfig"] = {
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.plugins.lspconfig"
      end,
    },
   }
}

-- so setup_lspconf = any file but that should be in custom dir!

return M
