return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason-org/mason.nvim",
    },

    config = function()
      vim.lsp.enable("vtsls")

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {
        desc = "LSP hover",
      })

      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
        desc = "Go to definition",
      })

      vim.keymap.set("n", "gr", vim.lsp.buf.references, {
        desc = "References",
      })

      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {
        desc = "Rename symbol",
      })

      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {
        desc = "Code action",
      })

      vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {
        desc = "Previous diagnostic",
      })

      vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {
        desc = "Next diagnostic",
      })

      vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, {
        desc = "Show diagnostic",
      })
    end,
  },
}
