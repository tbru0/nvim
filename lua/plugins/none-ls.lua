return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.yapf.with({
					extra_args = { "--style", "/home/brubaktd/.config/yapf" },
				}),

				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.yapf,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.prettier,
			},
		})
	end,
}
