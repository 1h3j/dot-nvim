vim.api.nvim_create_autocmd("UIEnter", {
  callback = function()
      local arg = vim.fn.argv(0) -- first argument passed to nvim
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
      scope = "cursor", -- 👈 important: only show if cursor is on the diagnostic
    }
    vim.diagnostic.open_float(nil, opts)
  end,
})
