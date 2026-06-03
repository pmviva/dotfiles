--[[
  MINI EXTRA PLUGIN CONFIGURATION FILE
]]

--[[
  CONFIGURES THE MINI EXTRA PLUGIN
]]
require("mini.extra").setup()

--[[
  CONFIGURES THE DIAGNOSTIC PICKER KEYMAP
]]
vim.keymap.set("n", "<Leader>pd", function()
  MiniExtra.pickers.diagnostic()
end, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Pick diagnostics",

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
  CONFIGURES THE KEYMAP PICKER KEYMAP
]]
vim.keymap.set("n", "<Leader>pk", function()
  MiniExtra.pickers.keymaps()
end, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Pick keymaps",

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
  CONFIGURES THE LSP SYMBOL PICKER KEYMAP
]]
vim.keymap.set("n", "<Leader>ps", function()
  MiniExtra.pickers.lsp({
    --[[
      CONFIGURES THE SCOPE OPTION
    ]]
    scope = "document_symbol",
  })
end, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Pick document symbols",

  --[[
    CONFIGURES THE NON-RECURSIVE OPTION
  ]]
  noremap = true,

  --[[
    CONFIGURES THE SILENT OPTION
  ]]
  silent = true,
})
