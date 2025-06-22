require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move current selected code down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move current selected code up" })
map("n", "J", "mzJ`z", { desc = "When pressing J make sure the view dosen't move" })
map("n", "<C-u>", "<C-u>zz", { desc = "Center the view when going up"})
map("n", "<C-d>", "<C-d>zz", { desc = "Center the view when going down"})
map("n", "n", "nzzzv", { desc = "Center the view when searching" })
map("n", "N", "Nzzzv", { desc = "Center the view when searching" })
map("x", "p", '"_dP', { desc = "Fix paste buffer when pasting over something"})
map("v", "<leader>y", '"+y', { desc = "Copy into system clipboard"})
map("n", "<C-c>", "<Esc>", { desc = "Make sure they are the same"})
map("n", "s", "d$o<Esc>p", { desc = "Split line at cursor in half" })
