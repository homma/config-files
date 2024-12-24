return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  config = function()
    require('nvim-tree').setup {
      renderer = {
        symlink_destination = false,
        icons = {
          show = {
            file = false,
            folder = false,
            folder_arrow = false,
            git = false,
            modified = false,
          },
        },
      },
    }
  end,
}
