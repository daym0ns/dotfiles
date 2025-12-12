return {
    "rolv-apneseth/tfm.nvim",
    config = function ()
      vim.api.nvim_set_keymap("n", "<leader>e", "", {
        noremap = true,
        callback = require("tfm").open,
      })
      require("tfm").setup({
        file_manager = "yazi",
        replace_netrw = true,
        ui = {
          border = "none",
        }
      })
      vim.api.nvim_create_user_command('Tfm', function() require('tfm').open() end, {})
    end
}
