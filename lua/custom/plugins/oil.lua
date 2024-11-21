return {
  'stevearc/oil.nvim',
  lazy = false,
  config = function()
    require('oil').setup({
      win_options = {
        signcolumn = "yes:2"
      },
      delete_to_trash = true,
      skip_confirm_for_simple_edits = true,
      preview_split = "auto",
      keymaps = {
        ["_"] = "actions.open_cwd",
        ["<Esc>"] = "actions.close",
      }
    })
  end,
  keys = {
    { '-', '<cmd>Oil --float<cr>', mode = 'n', desc = "Open Floating Filesystem" },
    -- { '_', '<cmd>Oil --open_cwd<cr>', mode = 'n', desc = "" },
    { "_", function() require("oil").open_cwd() end, mode = {'n'}, desc = "Open parent dir" },
  },
}
