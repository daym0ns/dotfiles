return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
    "nvim-telescope/telescope-file-browser.nvim",
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    require("telescope").setup({
      defaults = {
        theme = "ivy",
        sorting_strategy = "ascending",
        vimgrep_arguments = { unpack(require("telescope.config").values.vimgrep_arguments) },
        layout_config = { horizontal = {
          prompt_position = "top",
          preview_width = 0.5,
        }},
        mappings = { i = {
          ["<esc>"] = "close",
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous"
        }}
      },
      pickers = {
        oldfiles = { theme = "ivy" },
        help_tags = { theme = "ivy" },
        live_grep = { theme = "ivy" },
        find_files = { theme = "ivy" },
        buffers = { theme = "ivy", mappings = { i = {
              ["<c-d>"] = "delete_buffer"
        } } },
      },
      extensions = {
        fzf = {},
        ["ui-select"] = { require("telescope.themes").get_dropdown {} },
        file_browser = {
          theme = "ivy",
          hijack_netrw = true,
          mappings = {
            i = {
              ["<esc>"] = false
            }
          }
        }
      }
    })
    require("telescope").load_extension("fzf")
    require("telescope").load_extension("ui-select")
    vim.keymap.set('n', '<space><space>', ':Telescope find_files<CR>')
    vim.keymap.set('n', '<space>fe', ':Telescope file_browser<CR>')
    vim.keymap.set('n', '<space>ff', ':Telescope find_files<CR>')
    vim.keymap.set('n', '<space>fg', ':Telescope live_grep<CR>')
    vim.keymap.set('n', '<space>fh', ':Telescope help_tags<CR>')
    vim.keymap.set('n', '<space>fb', ':Telescope buffers<CR>')
  end
}
