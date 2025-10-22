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
    vim.keymap.set("n", "<F11>",  ":make<CR>:copen<CR>", opts)
    -- Run current class (basename only). Works when no 'package' and .class is in CWD.
    vim.keymap.set("n", "<F12>", ":!java %:t:r<CR>", opts)
    -- vim.keymap.set("n", "<F11>", ":cprevious<CR>", opts)
    -- vim.keymap.set("n", "<F12>", ":cnext<CR>", opts)
  end,
})

-- autocommand for Verilog formatting on save using Verible
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.v",
  callback = function()
    local filepath = vim.fn.expand("%:p")
    vim.fn.jobstart({
      "verible-verilog-format",
      "--inplace",
      "--indentation_spaces=4",
      "--port_declarations_indentation=wrap",
      "--named_port_indentation=wrap",
      "--port_declarations_alignment=align",
      filepath,
    }, {
      on_exit = function(_, _)
        -- buffer already changed on disk; reload buffer if changed externally
        vim.schedule(function()
          -- only reload if buffer is unchanged by user
          if vim.bo.modified == false then
            vim.cmd("edit")
          end
        end)
      end,
    })
  end,
})

