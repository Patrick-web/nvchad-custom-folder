local M = {}

M.telescope = {
  n = {
      ["<leader>tl"] = {
        "<cmd> Telescope live_grep<CR>",
        "Telescope live grep"
      },
  },
}

M.lsp = {
   -- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions
   n = {
      ["<leader>la"] = {
         function()
           require'telescope.builtin'.code_actions{}
         end,
         "Code Actions",
      },
      ["<leader>ld"] = {
        "<cmd>Telescope lsp_document_diagnostics<CR>",
        "Document Diagnostics",
      },
      ["<leader>lw"] = {
        "<cmd>Telescope lsp_workspace_diagnostics<CR>",
        "Workspace Diagnostics",
      },
      ["<leader>lf"] = {
         function()
            vim.lsp.buf.formatting()
         end,
        "Format File",
      },
      ["<leader>lj"] = {
        "<cmd>lua vim.diagnostic.goto_next()<CR>",
        "Jumpt to Next diagnostic"
      },
      ["<leader>lk"] = {
        "<cmd>lua vim.diagnostic.goto_prev()<CR>",
        "Jumpt to Previous diagnostic"
      },
      ["<leader>lpd"] = {
        "<cmd>lua require 'telescope.builtin.lsp_definitions { jump_type = 'never'}'  <CR>",
        "Definition"
      },
      ["<leader>lpt"] = {
        "<cmd>lua require 'telescope.builtin.lsp_type_definitions { jump_type = 'never'}'  <CR>",
        "Type Definition"
      },
      ["<leader>lpi"] = {
        "<cmd>lua require 'telescope.builtin.lsp_implementations { jump_type = 'never'}'  <CR>",
        "Implementation"
      },
      ["<leader>lr"] = {
        "<cmd>lua vim.lsp.buf.rename()<CR>",
        "Rename"
      },
      ["<leader>lS"] = {
        "<cmd>Telescope lsp_document_symbols<CR>",
        "Document Symbols"
      },
      ["<leader>lW"] = {
        "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>",
        "Workspace Symbols"
      }
   },
}


return M
