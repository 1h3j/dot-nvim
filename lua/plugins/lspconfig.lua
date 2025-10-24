return {
	"neovim/nvim-lspconfig",
  config = function()
    vim.lsp.enable('lua_ls')
    vim.lsp.enable('clangd')
    vim.lsp.enable('pyright')
    vim.lsp.enable('qmlls')
    vim.lsp.enable('mesonlsp')
  end
}
