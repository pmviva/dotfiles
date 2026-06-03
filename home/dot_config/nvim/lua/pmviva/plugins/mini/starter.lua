--[[
  MINI STARTER PLUGIN CONFIGURATION FILE
]]

--[[
  DEFINES THE MINI STARTER MODULE VARIABLE
]]
local mini_starter = require("mini.starter")

--[[
  CONFIGURES THE MINI STARTER PLUGIN
]]
mini_starter.setup({
  --[[
    CONFIGURES THE ITEMS OPTION
  ]]
  items = {
    --[[
      CONFIGURES THE BUILTIN ACTIONS SECTION
    ]]
    mini_starter.sections.builtin_actions(),

    --[[
      CONFIGURES THE PICKER SECTION
    ]]
    mini_starter.sections.pick(),

    --[[
      CONFIGURES THE SESSION SECTION
    ]]
    mini_starter.sections.sessions(5, true),
  },
})

--[[
  CONFIGURES THE STARTER KEYMAP
]]
vim.keymap.set("n", "<Leader>S", MiniStarter.open, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Open starter",

  --[[
    CONFIGURES THE NON-RECURSIVE OPTION
  ]]
  noremap = true,

  --[[
    CONFIGURES THE SILENT OPTION
  ]]
  silent = true,
})
