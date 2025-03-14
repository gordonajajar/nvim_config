
--telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")

--tree
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")

--comment
vim.keymap.set("", "<leader>/", ":CommentToggle<cr>")

--See options.lua for my non-plugin keymaps.
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
--cmp
--["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion     
--["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion         
--["<C-b>"] = cmp.mapping.scroll_docs(-4),                               
--["<C-f>"] = cmp.mapping.scroll_docs(4),                                
--["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions 
--["<C-e>"] = cmp.mapping.abort(), -- close completion window            
--["<CR>"] = cmp.mapping.confirm({ select = false }),                    
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
