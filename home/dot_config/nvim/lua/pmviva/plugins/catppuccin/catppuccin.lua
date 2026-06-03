--[[
  CATPPUCCIN PLUGIN CONFIGURATION FILE
]]

--[[
  INSTALLS THE CATPPUCCIN PLUGIN
]]
vim.pack.add({
  {
    --[[
      CONFIGURES THE PLUGIN NAME OPTION
    ]]
    name = "catppuccin",

    --[[
      CONFIGURES THE PLUGIN SOURCE OPTION
    ]]
    src = "https://github.com/catppuccin/nvim",
  },
})

--[[
  CONFIGURES THE CATPPUCCIN PLUGIN
]]
require("catppuccin").setup({
  --[[
    CONFIGURES THE FLAVOUR OPTION
  ]]
  flavour = "macchiato",

  --[[
    CONFIGURES THE INTEGRATIONS OPTION
  ]]
  integrations = {
    --[[
      CONFIGURES THE MINI INTEGRATION OPTION
    ]]
    mini = {
      --[[
        CONFIGURES THE ENABLED OPTION
      ]]
      enabled = true,

      --[[
        CONFIGURES THE INDENTSCOPE COLOR OPTION
      ]]
      indentscope_color = "",
    },
  },
})
