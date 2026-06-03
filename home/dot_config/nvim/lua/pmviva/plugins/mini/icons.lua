--[[
  MINI ICONS PLUGIN CONFIGURATION FILE
]]

--[[
  CONFIGURES THE MINI ICONS PLUGIN
]]
require("mini.icons").setup({
  --[[
    CONFIGURES THE STYLE OPTION
  ]]
  style = "glyph",
})

--[[
  CONFIGURES MINI ICONS AS THE DEFAULT DEVICONS PROVIDER
]]
require("mini.icons").mock_nvim_web_devicons()

--[[
  CONFIGURES MINI ICONS AS THE DEFAULT LSP KIND ICON PROVIDER
]]
require("mini.icons").tweak_lsp_kind()
