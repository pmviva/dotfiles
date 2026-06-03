--[[
  KEYMAPS CONFIGURATION FILE
]]

--[[
  CONFIGURES THE LEFT WINDOW NAVIGATION KEYMAP
]]
vim.keymap.set("n", "<C-h>", "<C-w>h", {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Move to left window",

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
  CONFIGURES THE DOWN WINDOW NAVIGATION KEYMAP
]]
vim.keymap.set("n", "<C-j>", "<C-w>j", {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Move to lower window",

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
  CONFIGURES THE UP WINDOW NAVIGATION KEYMAP
]]
vim.keymap.set("n", "<C-k>", "<C-w>k", {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Move to upper window",

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
  CONFIGURES THE RIGHT WINDOW NAVIGATION KEYMAP
]]
vim.keymap.set("n", "<C-l>", "<C-w>l", {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Move to right window",

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
  CONFIGURES THE CLEAR SEARCH HIGHLIGHT KEYMAP
]]
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Clear search highlight",

  --[[
    CONFIGURES THE NON-RECURSIVE OPTION
  ]]
  noremap = true,

  --[[
    CONFIGURES THE SILENT OPTION
  ]]
  silent = true,
})
