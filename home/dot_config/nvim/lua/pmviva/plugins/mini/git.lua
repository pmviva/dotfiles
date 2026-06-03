--[[
  MINI GIT PLUGIN CONFIGURATION FILE
]]

--[[
  CONFIGURES THE MINI GIT PLUGIN
]]
require("mini.git").setup()

--[[
  CONFIGURES THE GIT STATUS KEYMAP
]]
vim.keymap.set("n", "<Leader>gs", "<Cmd>Git status<CR>", {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Git status",

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
  CONFIGURES THE GIT SHOW KEYMAP
]]
vim.keymap.set("n", "<Leader>gS", MiniGit.show_at_cursor, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Git show at cursor",

  --[[
    CONFIGURES THE NON-RECURSIVE OPTION
  ]]
  noremap = true,

  --[[
    CONFIGURES THE SILENT OPTION
  ]]
  silent = true,
})
