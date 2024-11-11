return {
  'stevearc/oil.nvim',
  config = function()
    require('oil').setup({
      win_options = {
        signcolumn = "yes:2"
      },
  delete_to_trash = true,
      -- keymaps = {     ["<Esc>"] = "actions.close"    }
    })
  end,
  keys = {
    -- { '=', '<cmd>Oil<cr>', mode = 'n', desc = "Open Filesystem" },
    { '-', '<cmd>Oil --float<cr>', mode = 'n', desc = "Open Floating Filesystem" },
  },
}
