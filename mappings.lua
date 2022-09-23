local M = {}

M.plugs = {
  n = {
    ["<leader>o"] = {":SymbolsOutline<CR>","Symbols"},
    ["<leader>F"] = {":lua require('spectre').open()<CR>","Find and Replace"}
    -- ["<leader>r"] = {":RnvimrToggle<CR>","Toggle Ranger"},
  },
}

M.overides = {
  n = {
    ["<leader>e"] = {":NvimTreeToggle<CR>","Toggle File Tree"},
  }

}


M.paneManagement = {
  i = {
    -- Switch Pane
    ["<C-S-Left>"]  = {"<ESC><C-w>h<CR>","Go to Left Pane"},
    ["<C-S-Right>"] = {"<ESC><C-w>l<CR>","Got to Right Pane"},
    ["<C-S-Up>"]    = {"<ESC><C-w>k<CR>","Go to Top Pane"},
    ["<C-S-Down>"]  = {"<ESC><C-w>j<CR>","Go to bottom Pane"},
  },
  n = {
    --Resize Pane
    ["<C-A-Left>"] = {":vertical resize +5<CR>", "Increase left"},
    ["<C-A-Right>"] = {":vertical resize -5<CR>","Reduce right"},
    ["<C-A-Up>"] = {":resize -5<CR>","Decrease Up"},
    ["<C-A-Down>"] = {":resize +5<CR>","Increase Down"},

    ["<C-S-Left>"]  = {"<ESC><C-w>h<CR>","Go to Left Pane"},
    ["<C-S-Right>"] = {"<ESC><C-w>l<CR>","Got to Right Pane"},
    ["<C-S-Up>"]    = {"<ESC><C-w>k<CR>","Go to Top Pane"},
    ["<C-S-Down>"]  = {"<ESC><C-w>j<CR>","Go to bottom Pane"},

  },
}

M.telescope = {
  n = {
   ["<leader>ts"] = {":Telescope lsp_document_symbols<CR>","Telescope symbols"},
   ["<leader>tf"] = {":Telescope live_grep<CR>","Telescope live_grep"},
   ["<C-p>"] = {":Telescope find_files<CR>","Telescope find files"},
   ["<C-g>"] = {":Telescope live_grep<CR>","Telescope Live grep"},
   ["<C-f>"] = {":Telescope grep_string<CR>","Telescope grep string"},
   ["<C-A-p>"] = {":Telescope buffers<CR>","Show Open Buffers"},
  },

  i ={
   ["<C-p>"] = {"<ESC>:Telescope find_files<CR>","Telescope find files"},
  }
}

M.vscodify = {
  i = {
    ["<A-Down>"] = {"<ESC>:m +1<CR>a","Move current line down"},
    ["<A-Up>"]   = {"<ESC>:m -2<CR>a","Move current line up"},
    ["<C-s>"] = {"<ESC>:wa<CR>","Save All Files"},
    ["<C-z>"] = {"<ESC>u<CR>","Undo"},
    ["<C-y>"] = {"<ESC>:redo<CR>","Redo"},
    ["<C-x>"] = {"<ESC>dd<CR>gi","Cut line"},
    ["<C-d>"] = {"<ESC>yyP<CR>I","Duplicate line"},
    ["<C-c>"] = {"<ESC>yy<CR>I","Copy line"},
    ["<C-v>"]  = {"<C-S-v>","Paste"},
  },
  n = {
   ["<A-Down>"] = {":m +1<CR>","Move current line down"},
   ["<A-Up>"]   = {":m -2<CR>","Move current line up"},
   ["<C-s>"]    = {":lua vim.lsp.buf.formatting_sync(nil,5000)<CR>:wa<CR>","Save All Files"},
   ["<C-z>"]    = {":undo<CR>","Undo"},
   ["<C-y>"]     = {":redo<CR>","Redo"},
   ["<C-x>"]    = {"dd","Cut line"},
   ["<C-c>"]    = {"yy<CR>","Copy line"},
   ["<C-d>"]    = {"yyP<CR>i","Duplicate line"},
  }
}

M.lsp = {
   -- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions
   n = {
      ["gh"] = {
        "<cmd>lua vim.lsp.buf.hover()<CR>",
        "Hover"
      },
      ["<leader>lts"] = {
        "<cmd>lua vim.diagnostic.show()<CR>",
        "Show diagnostics"
      },
      ["<leader>lth"] = {
        "<cmd>lua vim.diagnostic.hide()<CR>",
        "Hide diagnostics"
      },
      ["gl"] = {
        "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>",
        "Show inline diagnostics"
      },
      ["<leader>la"] = {
        "<cmd>lua vim.lsp.buf.code_action()<CR>",
         "Code Actions",
      },
      ["<leader>ld"] = {
        "<cmd>Telescope diagnostics<CR>",
        "Document Diagnostics",
      },
      ["<leader>lw"] = {
        "<cmd>Telescope lsp_workspace_diagnostics<CR>",
        "Workspace Diagnostics",
      },
      ["<leader>lf"] = {
         "<cmd>lua vim.lsp.buf.formatting_sync(nil,5000)<CR>",
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
