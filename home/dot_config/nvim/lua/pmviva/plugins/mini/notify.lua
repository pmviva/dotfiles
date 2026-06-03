--[[
  MINI NOTIFY PLUGIN CONFIGURATION FILE
]]

--[[
  CONFIGURES THE MINI NOTIFY PLUGIN
]]
require("mini.notify").setup()

--[[
  CONFIGURES THE NOTIFICATION CLEAR KEYMAP
]]
vim.keymap.set("n", "<Leader>nc", MiniNotify.clear, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Clear notifications",

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
  CONFIGURES THE NOTIFICATION HISTORY KEYMAP
]]
vim.keymap.set("n", "<Leader>nh", MiniNotify.show_history, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Show notification history",

  --[[
    CONFIGURES THE NON-RECURSIVE OPTION
  ]]
  noremap = true,

  --[[
    CONFIGURES THE SILENT OPTION
  ]]
  silent = true,
})
