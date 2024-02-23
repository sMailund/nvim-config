local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

local lspconfig = require('lspconfig')

-- to learn how to use mason.nvim with lsp-zero
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { "lua_ls", "rust_analyzer", "csharp_ls" },
  handlers = {
    lsp_zero.default_setup,
    csharp_ls = function()
       require('lspconfig').csharp_ls.setup {
        --on_attach = function(client, bufnr) -- TODO make this run for all languages
          --local basics = require('lsp_basics')

          --basics.make_lsp_commands(client, bufnr)
          --basics.make_lsp_mappings(client, bufnr)
        --end
      }
      end,
      lua_ls = function()
        lspconfig.lua_ls.setup {
          on_attach = function(client, bufnr) -- TODO make this run for all languages
            local basics = require('lsp_basics')

            basics.make_lsp_commands(client, bufnr)
            basics.make_lsp_mappings(client, bufnr)
          end
        }
      end
  },
})

require('lspconfig').csharp_ls.setup({})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),

    -- Scroll up and down in the completion documentation
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  })
})
