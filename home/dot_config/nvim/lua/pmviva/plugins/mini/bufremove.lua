--[[
  MINI BUFREMOVE PLUGIN CONFIGURATION FILE
]]

--[[
  CONFIGURES THE MINI BUFREMOVE PLUGIN
]]
require("mini.bufremove").setup()

--[[
  CONFIGURES THE BUFFER DELETE KEYMAP
]]
vim.keymap.set("n", "<Leader>bd", function()
  MiniBufremove.delete()
end, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Delete buffer",

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
  CONFIGURES THE FORCE BUFFER DELETE KEYMAP
]]
vim.keymap.set("n", "<Leader>bD", function()
  MiniBufremove.delete(0, true)
end, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Force delete buffer",

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
  CONFIGURES THE BUFFER WIPEOUT KEYMAP
]]
vim.keymap.set("n", "<Leader>bw", function()
  MiniBufremove.wipeout()
end, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Wipeout buffer",

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
  CONFIGURES THE FORCE BUFFER WIPEOUT KEYMAP
]]
vim.keymap.set("n", "<Leader>bW", function()
  MiniBufremove.wipeout(0, true)
end, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Force wipeout buffer",

  --[[
    CONFIGURES THE NON-RECURSIVE OPTION
  ]]
  noremap = true,

  --[[
    CONFIGURES THE SILENT OPTION
  ]]
  silent = true,
})
