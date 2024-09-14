-- used to add external source like formating, linting, diagnostic (used by lsp) 
return {
	"nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim"
  },
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
        require("none-ls.diagnostics.eslint_d")
			},
		})
		vim.keymap.set("n", "gf", vim.lsp.buf.format, {})
	end,
}
