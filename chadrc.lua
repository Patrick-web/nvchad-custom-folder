local pluginConfs = require "custom.plugins.configs"

local M = {}

M.mappings = require "custom.mappings"

M.ui = {
   theme = "aquarium",
}

M.plugins = {
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
   user = require "custom.plugins",
   override ={
      ["nvim-telescope/telescope.nvim"]  = pluginConfs.telescope
   }
}

-- so setup_lspconf = any file but that should be in custom dir!

return M
