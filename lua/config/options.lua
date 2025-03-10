local opt = vim.opt

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.loader.enable()

opt.tabstop = 2 -- Définit la largeur d'une tabulation à 4 espaces
opt.shiftwidth = 2 -- Définit le nombre d'espaces utilisés pour l'indentation automatique
opt.expandtab = true -- Convertit les tabulations en espaces
opt.softtabstop = 2 -- Nombre d'espaces que Neovim considère lors de l'insertion d'une tabulation
opt.clipboard = "unnamedplus" -- enable clipboard
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.cursorline = true -- Enable highlighting of the current line
opt.mouse = "a" -- Enable mouse mode
opt.number = true -- Print line number
opt.splitright = true
opt.scrolloff = 5 -- minimal number of screen lines to keep above and below the cursor
opt.sidescrolloff = 5 -- minimal number of screen columns either side of cursor if wrap is `false

