return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",

    opts = {
      preset = "modern",

      delay = 100,

      sort = { "alphanum" },

      win = {
        border = "rounded",
        padding = { 1, 2 },
        title = true,
        title_pos = "center",

        row = math.huge,
        col = math.huge,

        width = 32,
        height = { min = 4, max = 20 },
      },

      layout = {
        width = { min = 28, max = 28 },
        spacing = 1,
      },

      icons = {
        group = "",
      },

      spec = {
          {
            "<leader>s",
            group = "Configuration",
            icon = {
              icon = "󰒓",
              hl = "WhichKeyGroup",
            }, 
          },
        },
    },

    config = function(_, opts)
      require("which-key").setup(opts)

      local hl = vim.api.nvim_get_hl(0, {
        name = "WhichKeyIcon",
        link = false,
      })

      vim.api.nvim_set_hl(0, "WhichKeyIcon", {
        fg = hl.fg,
        bg = "NONE",
        underline = false,
        undercurl = false,
        strikethrough = false,
      })
    end
  },
}
