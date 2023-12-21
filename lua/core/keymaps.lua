local Util = require("utils.mapping")

vim.g.mapleader = " "

Util.keymap("n", "<C-h>", "<C-w>h")
Util.keymap("n", "<C-j>", "<C-w>j")
Util.keymap("n", "<C-k>", "<C-w>k")
Util.keymap("n", "<C-l>", "<C-w>l")

Util.keymap("n", "<A-j>", "<cmd>m .+1<cr>==")
Util.keymap("n", "<A-k>", "<cmd>m .-2<cr>==")
Util.keymap("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi")
Util.keymap("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi")
Util.keymap("v", "<A-j>", "<cmd>m '>+1<cr>gv=gv")
Util.keymap("v", "<A-k>", "<cmd>m '<-2<cr>gv=gv")

Util.keymap({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>")

Util.keymap("n", "<leader>l", "<cmd>Lazy<cr>")
