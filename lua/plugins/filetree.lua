return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",

    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },

    opts = {
      filesystem = {
        follow_current_file = {
          enabled = true,
        },

        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },

        hijack_netrw_behavior = "disabled",
      },

      window = {
        position = "left",
        width = 32,

        mappings = {
          ["l"] = function(state)
            local node = state.tree:get_node()

            if node.type == "directory" then
              if not node:is_expanded() then
                state.commands["open"](state)
              end
            else
              state.commands["open"](state)
            end
          end,

          ["h"] = function(state)
            local node = state.tree:get_node()

            if node.type == "directory" and node:is_expanded() then
              state.commands["close_node"](state)
            end
          end,
        },
      },
    },

    keys = {
      {
        "<leader>e",
        "<cmd>Neotree toggle<cr>",
        desc = "Toggle file tree",
      },
      {
        "<leader>fe",
        "<cmd>Neotree reveal<cr>",
        desc = "Reveal current file",
      },
    },
  },
}
