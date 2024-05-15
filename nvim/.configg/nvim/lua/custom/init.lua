-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.keymap.set({'n', 'v'}, '<C-c><C-c>', function()
  -- yank text into v register
  if vim.api.nvim_get_mode()["mode"] == "n" then
    vim.cmd('normal vip"vy')
  else
    vim.cmd('normal "vy')
  end
  -- construct command with v register as command to send
  -- vim.cmd(string.format('call VimuxRunCommand("%s")', vim.trim(vim.fn.getreg('v'))))
  vim.cmd("call VimuxRunCommand(@v)")
end)
