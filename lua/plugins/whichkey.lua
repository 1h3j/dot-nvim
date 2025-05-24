return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    win = {
      width = 90,
      height = { min = 4, max = 25 },
      col = math.huge,
      row = 0,
      border = "none",
    }
  },

  init = function()
    local wk = require("which-key")
    wk.add({
      {"<Leader>r", desc = "Rename usages"},
      {"<Leader>u", desc = "Toggle UndoTree"},
      {"<Leader>d", desc = "Open Diagnostic"},
      {"<Leader>D", desc = "Jump to diagnostic"},
    })
  end,

  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
