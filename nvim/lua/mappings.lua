require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", ",", ":", { desc = "CMD enter command mode" })

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- exit nvim
map("n", "zz", ":q!<cr>", opts)
map("n", "zw", ":wq!<cr>", opts)

-- move
map("n", "<M-k>", ":m .-2<CR>==", opts)
map("n", "<M-j>", ":m .+1<CR>==", opts)

-- increname
map("n", "<leader>rn", ":IncRename ", opts)

-- select all
map("n", "<C-a>", "gg<S-v>G")

-- new tab
map("n", "te", ":tabedit")
map("n", "1", ":tabnext<Return>", opts)
map("n", "2", ":tabnext<Return>", opts)

-- Split window
map("n", "ss", ":split<Return>", opts)
map("n", "sv", ":vsplit<Return>", opts)

-- Move window
map("n", "sh", "<C-w>h")
map("n", "sk", "<C-w>k")
map("n", "sj", "<C-w>j")
map("n", "sl", "<C-w>l")

-- Esc
map("n", ",", ":")
map("i", "++", "<ESC>")

-- Back
map("n", "<C-z>", "u", opts)
