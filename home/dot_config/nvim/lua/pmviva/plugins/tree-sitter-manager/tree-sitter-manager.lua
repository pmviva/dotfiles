--[[
  TREE-SITTER MANAGER PLUGIN CONFIGURATION FILE
]]

--[[
  INSTALLS THE TREE-SITTER MANAGER PLUGIN
]]
vim.pack.add({
  {
    --[[
      CONFIGURES THE PLUGIN NAME OPTION
    ]]
    name = "tree-sitter-manager",

    --[[
      CONFIGURES THE PLUGIN SOURCE OPTION
    ]]
    src = "https://github.com/romus204/tree-sitter-manager.nvim",
  },
})

--[[
  CONFIGURES THE TREE-SITTER MANAGER PLUGIN
]]
require("tree-sitter-manager").setup({
  --[[
    CONFIGURES THE ENSURE INSTALLED OPTION
  ]]
  ensure_installed = {
    --[[
      CONFIGURES THE BASH PARSER
    ]]
    "bash",

    --[[
      CONFIGURES THE C PARSER
    ]]
    "c",

    --[[
      CONFIGURES THE C++ PARSER
    ]]
    "cpp",

    --[[
      CONFIGURES THE CSS PARSER
    ]]
    "css",

    --[[
      CONFIGURES THE HTML PARSER
    ]]
    "html",

    --[[
      CONFIGURES THE JAVA PARSER
    ]]
    "java",

    --[[
      CONFIGURES THE JAVASCRIPT PARSER
    ]]
    "javascript",

    --[[
      CONFIGURES THE LUA PARSER
    ]]
    "lua",

    --[[
      CONFIGURES THE RUST PARSER
    ]]
    "rust",

    --[[
      CONFIGURES THE SCSS PARSER
    ]]
    "scss",

    --[[
      CONFIGURES THE TOML PARSER
    ]]
    "toml",

    --[[
      CONFIGURES THE TSX PARSER
    ]]
    "tsx",

    --[[
      CONFIGURES THE TYPESCRIPT PARSER
    ]]
    "typescript",

    --[[
      CONFIGURES THE XML PARSER
    ]]
    "xml",

    --[[
      CONFIGURES THE YAML PARSER
    ]]
    "yaml",

    --[[
      CONFIGURES THE ZSH PARSER
    ]]
    "zsh",
  },
})
