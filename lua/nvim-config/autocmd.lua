-- Persistant marks and folds
vim.api.nvim_create_augroup("auto_view", { clear = true })
vim.api.nvim_create_autocmd("BufWinLeave", {
  group = "auto_view",
  pattern = "*",
  callback = function()
    if vim.bo.buftype == "" then
      vim.cmd("silent! mkview")
    end
  end,
})
vim.api.nvim_create_autocmd("BufWinEnter", {
  group = "auto_view",
  pattern = "*",
  callback = function()
    if vim.bo.buftype == "" then
      vim.cmd("silent! loadview")
    end
  end,
})

-- Automatically cd to the directory that is in the arguments when starting neovim
vim.api.nvim_create_autocmd("UIEnter", {
  callback = function()
      local arg = vim.fn.argv(0)
      if vim.fn.isdirectory(arg) == 1 then
        vim.cmd("cd " .. arg)
      end
  end
})

-- Automatically show diagnostic (yes, it doesn't do it by default) when hovering over it
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    local opts = {
      focusable = false,
      close_events = { "CursorMoved", "BufLeave", "InsertEnter", "FocusLost" },
      border = "rounded",
      source = "always",
      prefix = " ",
      scope = "cursor",
    }
    vim.diagnostic.open_float(nil, opts)
  end,
})
