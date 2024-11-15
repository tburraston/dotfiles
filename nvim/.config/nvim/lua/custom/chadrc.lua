---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "decay",
  theme_toggle = { "decay", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

vim.api.nvim_set_hl(0, "Comment", {fg = "#77798c"})
vim.api.nvim_set_hl(0, "@comment", {link = "Comment"})
vim.api.nvim_set_hl(0, "Visual", {fg = "#e892e7", bg = "#77798c"})
vim.api.nvim_set_hl(0, "@visual", {link = "Visual"})

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
