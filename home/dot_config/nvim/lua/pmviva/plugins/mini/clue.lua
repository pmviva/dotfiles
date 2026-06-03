--[[
  MINI CLUE PLUGIN CONFIGURATION FILE
]]

--[[
  DEFINES THE MINI CLUE MODULE VARIABLE
]]
local mini_clue = require("mini.clue")

--[[
  CONFIGURES THE MINI CLUE PLUGIN
]]
mini_clue.setup({
  --[[
    CONFIGURES THE CLUES OPTION
  ]]
  clues = {
    --[[
      CONFIGURES THE BUFFER MAPPING GROUP
    ]]
    {
      --[[
        CONFIGURES THE DESCRIPTION OPTION
      ]]
      desc = "+Buffers",

      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = "<Leader>b",

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = "n",
    },

    --[[
      CONFIGURES THE DIFF MAPPING GROUP
    ]]
    {
      --[[
        CONFIGURES THE DESCRIPTION OPTION
      ]]
      desc = "+Diff",

      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = "<Leader>d",

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = "n",
    },

    --[[
      CONFIGURES THE GIT MAPPING GROUP
    ]]
    {
      --[[
        CONFIGURES THE DESCRIPTION OPTION
      ]]
      desc = "+Git",

      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = "<Leader>g",

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = "n",
    },

    --[[
      CONFIGURES THE MINIMAP MAPPING GROUP
    ]]
    {
      --[[
        CONFIGURES THE DESCRIPTION OPTION
      ]]
      desc = "+Minimap",

      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = "<Leader>m",

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = "n",
    },

    --[[
      CONFIGURES THE NOTIFICATION MAPPING GROUP
    ]]
    {
      --[[
        CONFIGURES THE DESCRIPTION OPTION
      ]]
      desc = "+Notifications",

      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = "<Leader>n",

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = "n",
    },

    --[[
      CONFIGURES THE PICKER MAPPING GROUP
    ]]
    {
      --[[
        CONFIGURES THE DESCRIPTION OPTION
      ]]
      desc = "+Pickers",

      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = "<Leader>p",

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = "n",
    },

    --[[
      CONFIGURES THE SESSION MAPPING GROUP
    ]]
    {
      --[[
        CONFIGURES THE DESCRIPTION OPTION
      ]]
      desc = "+Sessions",

      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = "<Leader>s",

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = "n",
    },

    --[[
      CONFIGURES THE CLEANUP MAPPING GROUP
    ]]
    {
      --[[
        CONFIGURES THE DESCRIPTION OPTION
      ]]
      desc = "+Cleanup",

      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = "<Leader>t",

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = "n",
    },

    --[[
      CONFIGURES THE VISIT MAPPING GROUP
    ]]
    {
      --[[
        CONFIGURES THE DESCRIPTION OPTION
      ]]
      desc = "+Visits",

      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = "<Leader>v",

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = "n",
    },

    --[[
      CONFIGURES THE BUILTIN COMPLETION CLUES
    ]]
    mini_clue.gen_clues.builtin_completion(),

    --[[
      CONFIGURES THE G KEY CLUES
    ]]
    mini_clue.gen_clues.g(),

    --[[
      CONFIGURES THE MARK CLUES
    ]]
    mini_clue.gen_clues.marks(),

    --[[
      CONFIGURES THE REGISTER CLUES
    ]]
    mini_clue.gen_clues.registers(),

    --[[
      CONFIGURES THE SQUARE BRACKET CLUES
    ]]
    mini_clue.gen_clues.square_brackets(),

    --[[
      CONFIGURES THE WINDOW CLUES
    ]]
    mini_clue.gen_clues.windows({
      --[[
        CONFIGURES THE MOVE SUBMODE OPTION
      ]]
      submode_move = true,

      --[[
        CONFIGURES THE NAVIGATE SUBMODE OPTION
      ]]
      submode_navigate = true,

      --[[
        CONFIGURES THE RESIZE SUBMODE OPTION
      ]]
      submode_resize = true,
    }),

    --[[
      CONFIGURES THE Z KEY CLUES
    ]]
    mini_clue.gen_clues.z(),
  },

  --[[
    CONFIGURES THE TRIGGERS OPTION
  ]]
  triggers = {
    --[[
      CONFIGURES THE LEADER TRIGGER
    ]]
    {
      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = "<Leader>",

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = {
        --[[
          CONFIGURES NORMAL MODE
        ]]
        "n",

        --[[
          CONFIGURES VISUAL MODE
        ]]
        "x",
      },
    },

    --[[
      CONFIGURES THE LEFT SQUARE BRACKET TRIGGER
    ]]
    {
      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = "[",

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = "n",
    },

    --[[
      CONFIGURES THE RIGHT SQUARE BRACKET TRIGGER
    ]]
    {
      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = "]",

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = "n",
    },

    --[[
      CONFIGURES THE BUILTIN COMPLETION TRIGGER
    ]]
    {
      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = "<C-x>",

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = "i",
    },

    --[[
      CONFIGURES THE G TRIGGER
    ]]
    {
      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = "g",

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = {
        --[[
          CONFIGURES NORMAL MODE
        ]]
        "n",

        --[[
          CONFIGURES VISUAL MODE
        ]]
        "x",
      },
    },

    --[[
      CONFIGURES THE MARK TRIGGER
    ]]
    {
      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = "'",

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = {
        --[[
          CONFIGURES NORMAL MODE
        ]]
        "n",

        --[[
          CONFIGURES VISUAL MODE
        ]]
        "x",
      },
    },

    --[[
      CONFIGURES THE JUMP MARK TRIGGER
    ]]
    {
      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = "`",

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = {
        --[[
          CONFIGURES NORMAL MODE
        ]]
        "n",

        --[[
          CONFIGURES VISUAL MODE
        ]]
        "x",
      },
    },

    --[[
      CONFIGURES THE NORMAL REGISTER TRIGGER
    ]]
    {
      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = '"',

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = {
        --[[
          CONFIGURES NORMAL MODE
        ]]
        "n",

        --[[
          CONFIGURES VISUAL MODE
        ]]
        "x",
      },
    },

    --[[
      CONFIGURES THE INSERT REGISTER TRIGGER
    ]]
    {
      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = "<C-r>",

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = {
        --[[
          CONFIGURES COMMAND MODE
        ]]
        "c",

        --[[
          CONFIGURES INSERT MODE
        ]]
        "i",
      },
    },

    --[[
      CONFIGURES THE WINDOW TRIGGER
    ]]
    {
      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = "<C-w>",

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = "n",
    },

    --[[
      CONFIGURES THE Z TRIGGER
    ]]
    {
      --[[
        CONFIGURES THE KEYS OPTION
      ]]
      keys = "z",

      --[[
        CONFIGURES THE MODE OPTION
      ]]
      mode = {
        --[[
          CONFIGURES NORMAL MODE
        ]]
        "n",

        --[[
          CONFIGURES VISUAL MODE
        ]]
        "x",
      },
    },
  },
})
