return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require("lualine").setup({
      sections = {
        lualine_a = {
          function()
            local mode = vim.fn.mode()
            local mode_map = {
              n = 'NORMAL',
              i = 'INSERT',
              v = 'VISUAL',
              V = 'V-LINE',
              [''] = 'V-BLOCK', -- visual block
              c = 'COMMAND',
              s = 'SELECT',
              R = 'REPLACE',
              t = 'TERMINAL'
            }
            return ' ' .. (mode_map[mode] or mode)
          end
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_z = { "hostname" },
        lualine_y = {
          function()
            local icon = require('nvim-web-devicons').get_icon(vim.fn.expand('%:t'), vim.fn.expand('%:e'), { default = true })
            local name = vim.fn.expand('%:t')
            return icon .. ' ' .. name
          end,
        }
      },
      options = {
        section_separators = { left = '', right = ''},
        component_separators = { left = '', right = ''},
        icons_enabled = true,
        globalstatus = true,
      },
    })
  end
}
