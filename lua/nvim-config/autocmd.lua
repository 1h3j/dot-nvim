if not vim.g.neovide then
  local api = require("image")

  local fontRatio = 22/9
  local headerImageRatio = 16/9
  local textOffsetFromCenter = 13
  local imageOffsetFromCenter = 2

  local function drawHeader()
      local image = api.from_file(os.getenv("HOME") .. "/.config/nvim/header_image.png", headerImageRatio * textOffsetFromCenter * fontRatio < vim.o.columns and {
        inline = false,
        with_virtual_padding = false,

        x = math.floor((vim.o.columns - (textOffsetFromCenter * fontRatio * headerImageRatio)) / 2),
        y = math.floor(vim.o.lines / 2 - textOffsetFromCenter - imageOffsetFromCenter),
        height = textOffsetFromCenter
      } or {
        inline = false,
        with_virtual_padding = false,

        x = 0,
        y = math.floor((vim.o.lines - (vim.o.columns / fontRatio)) / 2 - imageOffsetFromCenter),
        width = vim.o.columns
      })

      api.clear()
      image:render()
  end

  vim.api.nvim_create_autocmd("BufReadPre", {
    callback = function()
      api.clear()
    end,
    once = true,
  })

  vim.api.nvim_create_autocmd("FileType", {
    pattern = "dashboard",
    once = true,
    callback = function()
      vim.schedule(drawHeader)
    end
  })

  vim.api.nvim_create_autocmd("WinResized", {
    callback = function()
      -- only redraw if we're still on the dashboard buffer
      if vim.bo.filetype == "dashboard" then
        vim.schedule(drawHeader)
      end
    end,
  })
end
