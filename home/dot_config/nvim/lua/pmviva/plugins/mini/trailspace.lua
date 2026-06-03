--[[
  MINI TRAILSPACE PLUGIN CONFIGURATION FILE
]]

--[[
  CONFIGURES THE MINI TRAILSPACE PLUGIN
]]
require("mini.trailspace").setup()

--[[
  CONFIGURES THE TRAILING BLANK LINES TRIM KEYMAP
]]
vim.keymap.set("n", "<Leader>tL", MiniTrailspace.trim_last_lines, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Trim trailing blank lines",

  --[[
    CONFIGURES THE NON-RECURSIVE OPTION
  ]]
  noremap = true,

  --[[
    CONFIGURES THE SILENT OPTION
  ]]
  silent = true,
})

--[[
  CONFIGURES THE TRAILING WHITESPACE TRIM KEYMAP
]]
vim.keymap.set("n", "<Leader>tw", MiniTrailspace.trim, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Trim trailing whitespace",

  --[[
    CONFIGURES THE NON-RECURSIVE OPTION
  ]]
  noremap = true,

  --[[
    CONFIGURES THE SILENT OPTION
  ]]
  silent = true,
})
