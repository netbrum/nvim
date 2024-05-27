local Util = require("utils.mapping")

vim.g.mapleader = " "

Util.keymap("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
Util.keymap("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
Util.keymap("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
Util.keymap("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

Util.keymap("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
Util.keymap("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
Util.keymap("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
Util.keymap("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
Util.keymap("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
Util.keymap("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

Util.keymap({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

Util.keymap("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

Util.keymap("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
