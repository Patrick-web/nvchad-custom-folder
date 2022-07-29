local M = {}

M.telescope = function ()
   -- This is your opts table
require("telescope").setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
      }
    }
  }
}
-- To get ui-select loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("ui-select")
end

M.alpha_dashboard = {disable = false}

M.nvimtree = {
   git = {
      enable = true,
   },
   view = {
      side = "left",
      width = 20,
   },
}

M.mason = {
  ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "vue-language-server",
        "deno",
        "emmet-ls",
        "json-lsp",
        --compiled languages
        "jdtls",
        "gopls",
        "rust-analyzer",
        "clangd",
        -- shell
        "shfmt",
        "shellcheck",
  },
}


return M
