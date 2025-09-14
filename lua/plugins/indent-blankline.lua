return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    exclude = {
      filetypes = { "dashboard", "alpha", "startify" },
      buftypes = { "terminal", "nofile" },
    },
  },
}
