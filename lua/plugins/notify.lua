return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      fps = 60,
      stages = "slide",
      timeout = 1500,
      background_colour = "#000000",
      render = "wrapped-compact",
      top_down = false
    })
  end,
}
