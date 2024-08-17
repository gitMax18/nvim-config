return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup()
    -- Define a function to set terminal keymaps
    function _G.set_terminal_keymaps()
      local opts = { buffer = 0 } -- Apply mappings only to the current buffer
      -- Map <esc> to exit terminal mode
      vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
      -- Map 'jk' to exit terminal mode (useful for typing quickly)
      vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
      -- Map <C-h>, <C-j>, <C-k>, <C-l> to navigate between windows
      vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
      vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
      vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
      vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
    end

    -- Use an autocommand to apply these mappings when a terminal buffer opens
    vim.api.nvim_create_autocmd("TermOpen", {
      pattern = "*", -- Apply to all terminal buffers, or use 'term://*toggleterm#*' for specific
      callback = function()
        _G.set_terminal_keymaps()
      end,
    })
    -- user keymap set to toggle terminal
    vim.keymap.set("n", "<Leader>tt", "<Cmd>ToggleTerm direction=horizontal<CR>", {})
    vim.keymap.set("n", "<Leader>tf", "<Cmd>ToggleTerm size=10 direction=float<CR>", {})
    vim.keymap.set("n", "<Leader>tc", "<Cmd>ToggleTerm dir=~/.config/nvim direction=horizontal<CR>", {})
  end,
}
