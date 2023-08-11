---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "radium",
  changed_themes = {
    radium = {
      base_30 = {
        blue = "#53AAE5"
      },
      base_16 = {
        base0E = "#ffe59e",
      },
    },
  },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
