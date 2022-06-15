local M = {}

M.mappings = require "custom.mappings"

M.ui = {
   theme = "gruvbox_light",
}

M.plugins = {
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
   user = require "custom.plugins"
}

-- so setup_lspconf = any file but that should be in custom dir!

return M
