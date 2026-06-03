--[[
  MINI MISC PLUGIN CONFIGURATION FILE
]]

--[[
  CONFIGURES THE MINI MISC PLUGIN
]]
require("mini.misc").setup()

--[[
  CONFIGURES THE WINDOW ZOOM KEYMAP
]]
vim.keymap.set("n", "<Leader>z", MiniMisc.zoom, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Toggle window zoom",

  --[[
    CONFIGURES THE NON-RECURSIVE OPTION
  ]]
  noremap = true,

  --[[
    CONFIGURES THE SILENT OPTION
  ]]
  silent = true,
})
