-- author: Daisuke Homma

local M = {}

M.start_less = function()
  local kopt = { noremap = true }
  local setkey = function(mode, input, invoke)
    vim.keymap.set(mode, input, invoke, kopt)
  end

  setkey('n', 'v', function()
    M.quit_less()
  end)

  setkey('n', 'q', ':q<CR>')
  setkey('n', '<Space>', '<C-f>')
  setkey('n', 'b', '<C-b>')
  setkey('n', 'j', '<C-e>')
  setkey('n', 'k', '<C-y>')

  vim.opt.readonly = true
  vim.opt.modifiable = false
end

M.quit_less = function()
  local delkey = vim.keymap.del

  delkey('n', 'v')

  delkey('n', 'q')
  delkey('n', '<Space>')
  delkey('n', 'b')
  delkey('n', 'j')
  delkey('n', 'k')

  vim.opt.modifiable = true
  vim.opt.readonly = false
end

return M
