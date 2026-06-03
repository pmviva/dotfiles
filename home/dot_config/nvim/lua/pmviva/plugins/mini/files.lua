--[[
  MINI FILES PLUGIN CONFIGURATION FILE
]]

--[[
  CONFIGURES THE MINI FILES PLUGIN
]]
require("mini.files").setup()

--[[
  CONFIGURES THE FILE EXPLORER KEYMAP
]]
vim.keymap.set("n", "<Leader>e", function()
  MiniFiles.open()
end, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Open file explorer",

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
  CONFIGURES THE CURRENT FILE EXPLORER KEYMAP
]]
vim.keymap.set("n", "<Leader>E", function()
  MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
end, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Open file explorer at current file",

  --[[
    CONFIGURES THE NON-RECURSIVE OPTION
  ]]
  noremap = true,

  --[[
    CONFIGURES THE SILENT OPTION
  ]]
  silent = true,
})
