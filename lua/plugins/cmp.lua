return {'hrsh7th/nvim-cmp',       -- Completion plugin
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',   -- LSP source for nvim-cmp
    'hrsh7th/cmp-buffer',     -- Buffer source
    'hrsh7th/cmp-path',       -- Path source
    'L3MON4D3/LuaSnip',       -- Snippets engine
    'saadparwaiz1/cmp_luasnip'-- Snippet source
  },

  config = function()
    local cmp = require('cmp')
    cmp.setup {
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      window = {
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" }
      }, {
        { name = 'buffer' }
      })
    }

  end
}
