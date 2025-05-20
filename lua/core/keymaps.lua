
--leader key is space
vim.g.mapleader = " "

-- LAZY PLUGIN MANAGER:
-- do :Lazy

--NONE PLUGIN SPECIFIC PLUGINS:

--TOGGLE WRAP: <c-w>

--bufferline
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")
-- do :%bd to close all buffers

--window management
vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>se", "<C-w>=")
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>")

--telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")

--tree
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")

--comment
vim.keymap.set("", "<leader>/", ":CommentToggle<cr>")


--PLUGIN-SPECIFIC KEYMAPS (defined in individual .luas in plugins/):
--
--Tmux
--{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
--{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
--{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
--{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
--{ "<c-o", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
--
--Treesitter
--init_selection = "<Leader>ss"
--node_incremental = "<Leader>si",                                                
--scope_incremental = "<Leader>sc",                                               
--node_decremental = "<Leader>sd",                                                
--
--["af"] = "@function.outer",                                                            
--["if"] = "@function.inner",                                                            
--["ac"] = "@class.outer",                                                               
--["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },     
--["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" }, 
--
--blink
-- <c-y> to accept
-- ['<C-k>'] = { 'select_prev', 'fallback' },
-- ['<C-j>'] = { 'select_next', 'fallback' },
--
--
--
--
--
--
--
--
--
--
--
