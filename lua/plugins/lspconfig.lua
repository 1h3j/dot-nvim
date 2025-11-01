return {
	"neovim/nvim-lspconfig",
  config = function()
    vim.lsp.enable('lua_ls')
    vim.lsp.enable('clangd')
    vim.lsp.enable('pyright')
    vim.lsp.enable('qmlls')
    vim.lsp.enable('jsonls')
    vim.lsp.enable('mesonlsp')

    vim.lsp.config('clangd', {
      cmd = {
        'clangd', '--header-insertion-decorators', '--rename-file-limit=0', '--pch-storage=memory'
      }
    })
  end
}
