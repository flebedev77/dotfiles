require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Visual mode up an down
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Fix J cursor from going to the end of the line
map("n", "J", "mzJ`z")

-- Half page up down center cursor
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-d>", "<C-d>zz")

-- Search terms in the middle
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Fix pasting
map("x", "p", '"_dP')

-- Yanking to system clipboard
map("v", "<leader>y", '"+y')

-- Telescope
map("n", "<C-p>", "<leader>ff")

-- Saving
map("n", "s", ":w<CR>")

-- Running
map("n", "<F4>", ":!cd build; cmake ..; make && ./vbrowser<CR>")

map("n", "<C-c>", "<Esc>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
