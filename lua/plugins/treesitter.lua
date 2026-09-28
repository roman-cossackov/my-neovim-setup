return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "neovim-treesitter/treesitter-parser-registry",
    },
    lazy = false,
    build = ":TSUpdate",

    config = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "lua",
          "vim",
          "javascript",
          "typescript",
          "typescriptreact",
          "javascriptreact",
          "html",
          "css",
          "json",
          "python",
          "bash",
          "markdown",
        },

        callback = function()
          pcall(vim.treesitter.start)
        end,
      })
    end,
  },
}

