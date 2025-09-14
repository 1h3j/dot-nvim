return {
  "akinsho/bufferline.nvim",
  config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup {
      options = {
        mode="buffers",
        diagnostics="nvim_lsp"
      }
    }
  end
}
