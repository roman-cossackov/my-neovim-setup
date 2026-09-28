local map = vim.keymap.set

map("n", "<leader>w", "<cmd>write<cr>", {
  desc = "Save file",
})

map("n", "<leader>qq", "<cmd>quit<cr>", {
  desc = "Quit",
})

map("n", "<leader>qw", "<cmd>wq<cr>", {
  desc = "Save and quit",
})

map("n", "<C-h>", "<C-w>h", { 
  desc = "Window left",
})

map("n", "<C-j>", "<C-w>j", {
  desc = "Window down"
})

map("n", "<C-k>", "<C-w>k", {
  desc = "Window up"
})

map("n", "<C-l>", "<C-w>l", {
  desc = "Window right"
})

map("n", "<leader>sl", "<cmd>Lazy<cr>", {
  desc = "Lazy",
})

map("n", "<leader>sm", "<cmd>Mason<cr>", {
  desc = "Mason",
})

map("n", "L", "<cmd>bnext<cr>", {
  desc = "Next buffer",
})

map("n", "H", "<cmd>bprevious<cr>", {
  desc = "Previous buffer",
})
