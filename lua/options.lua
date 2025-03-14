vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- syncs system clipboard with nvim's.
-- vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 999
-- allows virtual editing in visual block 
-- (cursor can go past end of line.)
vim.opt.virtualedit = "block"
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
--leader key is space
vim.g.mapleader = " "
vim.opt.termguicolors = true

--bufferline
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")

--window management
vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>se", "<C-w>=")
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>")


-- vim.keymap.set({"n", "v"}, "<leader>y", [["=y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])
