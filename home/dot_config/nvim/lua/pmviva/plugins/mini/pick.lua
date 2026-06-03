--[[
  MINI PICK PLUGIN CONFIGURATION FILE
]]

--[[
  CONFIGURES THE MINI PICK PLUGIN
]]
require("mini.pick").setup()

--[[
  CONFIGURES THE BUFFER PICKER KEYMAP
]]
vim.keymap.set("n", "<Leader>pb", MiniPick.builtin.buffers, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Pick buffers",

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
  CONFIGURES THE FILE PICKER KEYMAP
]]
vim.keymap.set("n", "<Leader>pf", MiniPick.builtin.files, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Pick files",

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
  CONFIGURES THE GREP PICKER KEYMAP
]]
vim.keymap.set("n", "<Leader>pG", MiniPick.builtin.grep, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Pick grep",

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
  CONFIGURES THE LIVE GREP PICKER KEYMAP
]]
vim.keymap.set("n", "<Leader>pg", MiniPick.builtin.grep_live, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Pick live grep",

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
  CONFIGURES THE HELP PICKER KEYMAP
]]
vim.keymap.set("n", "<Leader>ph", MiniPick.builtin.help, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Pick help",

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
  CONFIGURES THE RESUME PICKER KEYMAP
]]
vim.keymap.set("n", "<Leader>pr", MiniPick.builtin.resume, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Resume picker",

  --[[
    CONFIGURES THE NON-RECURSIVE OPTION
  ]]
  noremap = true,

  --[[
    CONFIGURES THE SILENT OPTION
  ]]
  silent = true,
})
