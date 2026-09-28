return {
  {
    "lewis6991/gitsigns.nvim",

    opts = {
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },
    },

    config = function(_, opts)
      require("gitsigns").setup(opts)

      local gs = require("gitsigns")

      vim.keymap.set("n", "]h", gs.next_hunk, {
        desc = "Next Git hunk",
      })

      vim.keymap.set("n", "[h", gs.prev_hunk, {
        desc = "Previous Git hunk",
      })

      vim.keymap.set("n", "<leader>gp", gs.preview_hunk, {
        desc = "Preview Git hunk",
      })

      vim.keymap.set("n", "<leader>gr", gs.reset_hunk, {
        desc = "Reset Git hunk",
      })

      vim.keymap.set("n", "<leader>gb", gs.blame_line, {
        desc = "Git blame line",
      })
    end,
  },

  {
    "tpope/vim-fugitive",

    config = function()
      vim.keymap.set("n", "<leader>gs", "<cmd>Git<cr>", {
        desc = "Git status",
      })
    end,
  },
}
