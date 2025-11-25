return {
	"neovim/nvim-lspconfig",
  config = function()
    vim.lsp.enable('lua_ls')
    vim.lsp.enable('clangd')
    vim.lsp.enable('dartls')
    vim.lsp.enable('pyright')
    vim.lsp.enable('qmlls')
    vim.lsp.enable('jsonls')
    vim.lsp.enable('mesonlsp')


    vim.lsp.config('clangd', {
      cmd = {
        'clangd', '--header-insertion-decorators', '--rename-file-limit=0', '--pch-storage=memory'
      }
    })

    vim.lsp.config('dartls', {
      cmd = {
        'fvm', 'dart', 'language-server', '--protocol=lsp' ,
      },
      filetypes = { 'dart' },
      root_markers = { 'pubspec.yaml' },
      init_options = {
        onlyAnalyzeProjectsWithOpenFiles = true,
        suggestFromUnimportedLibraries = true,
        closingLabels = true,
        outline = true,
        flutterOutline = true,
      },
      settings = {
        dart = {
          completeFunctionCalls = true,
          showTodos = true,
        },
      },
    })
  end
}
