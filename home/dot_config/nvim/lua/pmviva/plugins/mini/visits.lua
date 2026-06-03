--[[
  MINI VISITS PLUGIN CONFIGURATION FILE
]]

--[[
  CONFIGURES THE MINI VISITS PLUGIN
]]
require("mini.visits").setup()

--[[
  CONFIGURES THE VISIT LABEL ADD KEYMAP
]]
vim.keymap.set("n", "<Leader>va", MiniVisits.add_label, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Add visit label",

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
  CONFIGURES THE VISIT LABEL REMOVE KEYMAP
]]
vim.keymap.set("n", "<Leader>vA", MiniVisits.remove_label, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Remove visit label",

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
  CONFIGURES THE VISIT LABEL PICKER KEYMAP
]]
vim.keymap.set("n", "<Leader>vl", function()
  MiniVisits.select_label()
end, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Pick visit label",

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
  CONFIGURES THE RECENT VISIT PICKER KEYMAP
]]
vim.keymap.set("n", "<Leader>vr", function()
  MiniVisits.select_path(nil, {
    --[[
      CONFIGURES THE SORT OPTION
    ]]
    sort = MiniVisits.gen_sort.default({
      --[[
        CONFIGURES THE RECENCY WEIGHT OPTION
      ]]
      recency_weight = 1,
    }),
  })
end, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Pick recent visits",

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
  CONFIGURES THE FREQUENT VISIT PICKER KEYMAP
]]
vim.keymap.set("n", "<Leader>vf", function()
  MiniVisits.select_path(nil, {
    --[[
      CONFIGURES THE SORT OPTION
    ]]
    sort = MiniVisits.gen_sort.default({
      --[[
        CONFIGURES THE RECENCY WEIGHT OPTION
      ]]
      recency_weight = 0,
    }),
  })
end, {
  --[[
    CONFIGURES THE DESCRIPTION OPTION
  ]]
  desc = "Pick frequent visits",

  --[[
    CONFIGURES THE NON-RECURSIVE OPTION
  ]]
  noremap = true,

  --[[
    CONFIGURES THE SILENT OPTION
  ]]
  silent = true,
})
