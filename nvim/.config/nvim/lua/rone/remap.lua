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

map("n", ":", ";")
map("n", ";", ":")
map("v", ":", ";")
map("v", ";", ":")

-- paste over the selected text without adding the deleted text to the register
map("x", "<leader>p", [["_dP]])

-- copies the selected text to the system clipboard.
map("n", "<leader>y", [["+y]])
map("v", "<leader>y", [["+y]])

-- copies the entire current line to the system clipboard.
map("n", "<leader>Y", [["+Y]])

-- deletes text without adding to register
map("n", "<leader>d", [["_d]])
map("v", "<leader>d", [["_d]])
