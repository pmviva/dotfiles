--[[
  MINI DIFF PLUGIN CONFIGURATION FILE
]]

--[[
  CONFIGURES THE MINI DIFF PLUGIN
]]
require("mini.diff").setup()

--[[
  CONFIGURES THE DIFF OVERLAY KEYMAP
]]
vim.keymap.set("n", "<Leader>do", MiniDiff.toggle_overlay, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Toggle diff overlay",

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
  CONFIGURES THE DIFF TOGGLE KEYMAP
]]
vim.keymap.set("n", "<Leader>dt", MiniDiff.toggle, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Toggle diff",

  --[[
    CONFIGURES THE NON-RECURSIVE OPTION
  ]]
  noremap = true,

  --[[
    CONFIGURES THE SILENT OPTION
  ]]
  silent = true,
})
