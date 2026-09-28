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
        "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
        "                                                     ",
      }

      dashboard.section.buttons.val = {
        dashboard.button("f", "󰱼  Find file", "<cmd>Telescope find_files<cr>"),
        dashboard.button("g", "󰱼  Find text", "<cmd>Telescope live_grep<cr>"),
        dashboard.button("e", "󰙅  Explorer", "<cmd>Neotree toggle<cr>"),
        dashboard.button("l", "󰒲  Lazy", "<cmd>Lazy<cr>"),
        dashboard.button("m", "󰏓  Mason", "<cmd>Mason<cr>"),
        dashboard.button("q", "󰅚  Quit", "<cmd>qa<cr>"),
      }

      dashboard.section.footer.val = ""

      alpha.setup(dashboard.config)

      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          local arg = vim.fn.argv(0)
          local stat = arg ~= "" and vim.uv.fs_stat(arg) or nil

          if vim.fn.argc() == 0 then
            vim.schedule(function()
              vim.cmd("Neotree show")
            end)

            return
          end

          if stat and stat.type == "directory" then
            local dir = vim.fn.fnamemodify(arg, ":p")

            vim.cmd("cd " .. vim.fn.fnameescape(dir))

            vim.schedule(function()
              vim.cmd("enew")
              require("alpha").start(false)
              vim.cmd("Neotree show")
            end)
          end
        end,
      })

    end,
  },
}
