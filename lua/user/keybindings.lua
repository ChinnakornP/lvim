local M = {}

M.setup = function()
  -- ========================================
  -- keymappings


  -- Tab switch buffer
  vim.api.nvim_set_keymap("n", "<TAB>", ":bnext<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("n", "<S-TAB>", ":bprevious<CR>", { noremap = true, silent = true })

  -- Window Movement
  vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })


  vim.api.nvim_set_keymap('n', ';', ':', { noremap = true, silent = false })
  vim.api.nvim_set_keymap('v', ';', ':', { silent = false })
end
return M
