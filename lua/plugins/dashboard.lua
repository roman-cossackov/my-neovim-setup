return {
  {
    "goolord/alpha-nvim",
    event = "VimEnter",

    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
        "                                                     ",
        "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
        "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
        "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
        "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
        "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
        "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚══╝  ╚═╝╚═╝     ╚═╝ ",
        "                                                     ",
      }

      dashboard.section.buttons.val = {
        dashboard.button(
          "f",
          "󰈞  Find file",
          "<cmd>Telescope find_files<cr>"
        ),

        dashboard.button(
          "g",
          "󰊄  Find text",
          "<cmd>Telescope live_grep<cr>"
        ),

        dashboard.button(
          "l",
          "󰒲  Lazy",
          "<cmd>Lazy<cr>"
        ),

        dashboard.button(
          "m",
          "󰏓  Mason",
          "<cmd>Mason<cr>"
        ),

        dashboard.button(
          "q",
          "󰅚  Quit",
          "<cmd>qa<cr>"
        ),
      }

      dashboard.section.footer.val = ""

      alpha.setup(dashboard.config)
    end,
  },
}
