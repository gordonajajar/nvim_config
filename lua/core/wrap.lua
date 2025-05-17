
local wrap_enabled = false

function ToggleWrap()
  vim.opt.wrap = true
  vim.opt.list = false

  if wrap_enabled then
    vim.opt.linebreak = false
    vim.api.nvim_del_keymap("n", "j")
    vim.api.nvim_del_keymap("n", "k")
    vim.api.nvim_del_keymap("n", "0")
    vim.api.nvim_del_keymap("n", "^")
    vim.api.nvim_del_keymap("n", "$")
    wrap_enabled = false
  else
    vim.opt.linebreak = true
    vim.keymap.set("n", "j", "gj", { noremap = true })
    vim.keymap.set("n", "k", "gk", { noremap = true })
    vim.keymap.set("n", "0", "g0", { noremap = true })
    vim.keymap.set("n", "^", "g^", { noremap = true })
    vim.keymap.set("n", "$", "g$", { noremap = true })
    vim.keymap.set("v", "j", "gj", { noremap = true })
    vim.keymap.set("v", "k", "gk", { noremap = true })
    vim.keymap.set("v", "0", "g0", { noremap = true })
    vim.keymap.set("v", "^", "g^", { noremap = true })
    vim.keymap.set("v", "$", "g$", { noremap = true })
    wrap_enabled = true
  end
end

vim.keymap.set("n", "<leader>w", ToggleWrap, { noremap = true, silent = true })
