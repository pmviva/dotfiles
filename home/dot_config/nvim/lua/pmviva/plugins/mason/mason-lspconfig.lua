--[[
  MASON LSPCONFIG PLUGIN CONFIGURATION FILE
]]

--[[
  INSTALLS THE MASON LSPCONFIG PLUGIN
]]
vim.pack.add({
  {
    --[[
      CONFIGURES THE PLUGIN NAME OPTION
    ]]
    name = "mason-lspconfig",

    --[[
      CONFIGURES THE PLUGIN SOURCE OPTION
    ]]
    src = "https://github.com/mason-org/mason-lspconfig.nvim",
  },
})

--[[
  CONFIGURES THE MASON LSPCONFIG PLUGIN
]]
require("mason-lspconfig").setup({
  --[[
    CONFIGURES THE ENSURE INSTALLED OPTION
  ]]
  ensure_installed = {
    --[[
      CONFIGURES THE BASH LANGUAGE SERVER
    ]]
    "bashls",

    --[[
      CONFIGURES THE C AND C++ LANGUAGE SERVER
    ]]
    "clangd",

    --[[
      CONFIGURES THE CSS AND SCSS LANGUAGE SERVER
    ]]
    "cssls",

    --[[
      CONFIGURES THE HTML LANGUAGE SERVER
    ]]
    "html",

    --[[
      CONFIGURES THE JAVA LANGUAGE SERVER
    ]]
    "jdtls",

    --[[
      CONFIGURES THE XML LANGUAGE SERVER
    ]]
    "lemminx",

    --[[
      CONFIGURES THE LUA LANGUAGE SERVER
    ]]
    "lua_ls",

    --[[
      CONFIGURES THE RUST LANGUAGE SERVER
    ]]
    "rust_analyzer",

    --[[
      CONFIGURES THE TOML LANGUAGE SERVER
    ]]
    "taplo",

    --[[
      CONFIGURES THE JAVASCRIPT, TSX, AND TYPESCRIPT LANGUAGE SERVER
    ]]
    "ts_ls",

    --[[
      CONFIGURES THE YAML LANGUAGE SERVER
    ]]
    "yamlls",
  },
})
