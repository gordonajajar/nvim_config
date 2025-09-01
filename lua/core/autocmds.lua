-- autocommand group for Java settings
-- F9 compile, F10 run, F11/F12 navigate errors
vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    -- Compile current buffer
    vim.bo.makeprg = "javac %"
    -- Parse javac errors into quickfix
    vim.bo.errorformat = "%A%f:%l: %m,%-Z%p^,%-C%.%#"

    local opts = { buffer = true, silent = true }
    vim.keymap.set("n", "<F9>",  ":make<CR>:copen<CR>", opts)
    -- Run current class (basename only). Works when no 'package' and .class is in CWD.
    vim.keymap.set("n", "<F10>", ":!java %:t:r<CR>", opts)
    vim.keymap.set("n", "<F11>", ":cprevious<CR>", opts)
    vim.keymap.set("n", "<F12>", ":cnext<CR>", opts)
  end,
})
