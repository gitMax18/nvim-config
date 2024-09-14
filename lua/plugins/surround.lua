-- used to manage surrounding 
return {
  "echasnovski/mini.surround",
  version = "*",
  config = function()
    require("mini.surround").setup({
      mappings = {
        add = "gsa",        -- Add surrounding in Normal and Visual modes
        delete = "gsd",     -- Delete surrounding
        replace = "gsr",    -- Replace surrounding
        find = "gsf",       -- Find surrounding (to the right)
        find_left = "gsF",  -- Find surrounding (to the left)
        highlight = "gsh",  -- Highlight surrounding
        update_n_lines = "gsn", -- Update `n_lines`
      },
    })
  end,
}
