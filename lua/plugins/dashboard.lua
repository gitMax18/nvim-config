return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    require("dashboard").setup({
      theme = "hyper",
      config = {
        week_header = {
          enable = true,
        },
        shortcut = {
          { desc = '󰊳 Lazy Update', group = '@property', action = 'Lazy update', key = 'u' },
          {
            icon = ' ',
            icon_hl = '@variable',
            desc = 'Find Files',
            group = 'Label',
            action = 'Telescope find_files',
            key = 'f',
          },
          {
            desc = ' Session directory',
            group = 'DiagnosticHint',
            action = function() require("persistence").load() end,
            key = 'sd',
          },
          {
            desc = ' Session last',
            group = 'DiagnosticHint',
            action = function() require("persistence").load({last = true}) end,
            key = 'sl',
          },
        },
      },
    })
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
