local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(client, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })

      local basics = require('lsp_basics')

      basics.make_lsp_commands(client, bufnr)
      basics.make_lsp_mappings(client, bufnr)
    end,
  },
})
