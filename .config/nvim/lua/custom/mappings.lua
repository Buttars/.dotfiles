---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- Spectre
    ["<leader>ss"] = {
      function()
        require("spectre").open()
      end,
      "Global search",
    },

    ["<leader>sw"] = {
      function()
        require("spectre").open_visual { select_word = true }
      end,
      "Global search current word",
    },

    ["<leader>sp"] = {
      function()
        require("spectre").open_file_search { select_word = true }
      end,
      "Search current file"
    },

    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },

    -- Reload config
    -- Doesn't work...
    -- ["<leader>sv"] = { "<cmd> source $HOME/.config/nvim/init.lua <CR>", "Source nvim config"}
    --
    ["<leader>="] = { ":resize +10 <CR>" },
    ["<leader>-"] = { ":resize -10 <CR>" },

  },

  c = {
    ["Q"] = { ":qa", opts = { noremap = true } }
  }
}

return M
