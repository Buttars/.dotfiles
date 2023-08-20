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
      "Search current file",
    },

    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },

    ["<leader>="] = { ":resize +5 <CR>" },
    ["<leader>-"] = { ":resize -5 <CR>" },

    ["<leader>."] = { "<cmd> CodeActionMenu<CR>" },
    ["<leader>td"] = {
      function()
        if vim.g.diagnostics_visible then
          vim.g.diagnostics_visible = false
          vim.diagnostic.disable()
        else
          vim.g.diagnostics_visible = true
          vim.diagnostic.enable()
        end
      end,
    },
  },

  c = {
    ["Q"] = { "qa", opts = { noremap = true } },
    ["W"] = { "w !sudo -S tee %<CR>", opts = { noremap = true } },
  },
}

return M
