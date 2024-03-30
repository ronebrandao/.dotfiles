local map = require('rone.keymap').map

map("n", "<space>e", ":NvimTreeToggle<CR>")

-- Better window navigation
map("n", "<c-h>", "<C-w>h")
map("n", "<c-j>", "<C-w>j")
map("n", "<c-k>", "<C-w>k")
map("n", "<c-l>", "<C-w>l")

-- Telescope
map("n", "<leader>f", ":Telescope find_files<CR>")
map("n", "<c-t>", ":Telescope live_grep<CR>")

--Text moving
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
