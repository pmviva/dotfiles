--[[
  MINI MAP PLUGIN CONFIGURATION FILE
]]

--[[
  CONFIGURES THE MINI MAP PLUGIN
]]
require("mini.map").setup()

--[[
  CONFIGURES THE MINIMAP CLOSE KEYMAP
]]
vim.keymap.set("n", "<Leader>mc", MiniMap.close, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Close minimap",

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
  CONFIGURES THE MINIMAP FOCUS KEYMAP
]]
vim.keymap.set("n", "<Leader>mf", MiniMap.toggle_focus, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Toggle minimap focus",

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
  CONFIGURES THE MINIMAP OPEN KEYMAP
]]
vim.keymap.set("n", "<Leader>mo", MiniMap.open, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Open minimap",

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
  CONFIGURES THE MINIMAP REFRESH KEYMAP
]]
vim.keymap.set("n", "<Leader>mr", MiniMap.refresh, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Refresh minimap",

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
  CONFIGURES THE MINIMAP SIDE KEYMAP
]]
vim.keymap.set("n", "<Leader>ms", MiniMap.toggle_side, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Toggle minimap side",

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
  CONFIGURES THE MINIMAP TOGGLE KEYMAP
]]
vim.keymap.set("n", "<Leader>mt", MiniMap.toggle, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Toggle minimap",

  --[[
    CONFIGURES THE NON-RECURSIVE OPTION
  ]]
  noremap = true,

  --[[
    CONFIGURES THE SILENT OPTION
  ]]
  silent = true,
})
