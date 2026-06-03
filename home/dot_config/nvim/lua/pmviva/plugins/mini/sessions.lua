--[[
  MINI SESSIONS PLUGIN CONFIGURATION FILE
]]

--[[
  CONFIGURES THE MINI SESSIONS PLUGIN
]]
require("mini.sessions").setup()

--[[
  CONFIGURES THE SESSION DELETE KEYMAP
]]
vim.keymap.set("n", "<Leader>sd", function()
  MiniSessions.select("delete")
end, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Delete session",

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
  CONFIGURES THE SESSION READ KEYMAP
]]
vim.keymap.set("n", "<Leader>sr", function()
  MiniSessions.select("read")
end, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Read session",

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
  CONFIGURES THE SESSION WRITE KEYMAP
]]
vim.keymap.set("n", "<Leader>sw", function()
  MiniSessions.write()
end, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Write session",

  --[[
    CONFIGURES THE NON-RECURSIVE OPTION
  ]]
  noremap = true,

  --[[
    CONFIGURES THE SILENT OPTION
  ]]
  silent = true,
})
