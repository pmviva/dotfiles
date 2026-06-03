--[[
  MASON PLUGIN CONFIGURATION FILE
]]

--[[
  INSTALLS THE MASON PLUGIN
]]
vim.pack.add({
  {
    --[[
      CONFIGURES THE PLUGIN NAME OPTION
    ]]
    name = "mason",

    --[[
      CONFIGURES THE PLUGIN SOURCE OPTION
    ]]
    src = "https://github.com/mason-org/mason.nvim",
  },
})

--[[
  CONFIGURES THE MASON PLUGIN
]]
require("mason").setup()
