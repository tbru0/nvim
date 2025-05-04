return {
	{
		"Mofiqul/vscode.nvim",
		lazy = false, -- Load at startup
		priority = 1000, -- Make sure it loads before others
		config = function()
			require("vscode").setup({
				-- options go here
				transparent = false,
				italic_comments = true,
			})
			require("vscode").load()
		end,
	},
}
