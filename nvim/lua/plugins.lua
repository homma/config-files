-- load Packer
vim.cmd 'packadd packer.nvim'

-- run :PackerSync after modification
require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'nvim-tree/nvim-tree.lua'

  -- Terminal.app does not support true color
  -- use 'projekt0n/github-nvim-theme'

  -- use 'ii14/neorepl.nvim'
  -- use 'mhartington/formatter.nvim'
end)
