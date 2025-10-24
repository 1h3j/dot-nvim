vim.api.nvim_create_autocmd("UIEnter", {
  callback = function()
      local arg = vim.fn.argv(0)
      if vim.fn.isdirectory(arg) == 1 then
        vim.cmd("cd " .. arg)
      end
  end
})

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
