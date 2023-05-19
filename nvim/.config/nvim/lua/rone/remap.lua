local map = require('rone.keymap').map

map("n", "<leader>pv", "<cmd>Ex<CR>")
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

--Tab navigation
map("n", "<leader>1", "1gt")
map("n", "<leader>2", "2gt")
map("n", "<leader>3", "3gt")
map("n", "<leader>4", "4gt")
map("n", "<leader>5", "5gt")
