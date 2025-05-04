return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	lazy = false, -- neo-tree will lazily load itself
	config = function()
		require("neo-tree").setup({
			filesystem = {
				hijack_netrw_behavior = "disabled",
                filtered_items = {
                    visible = true,
                    hide_dot_file = false,
                    hide_gitignored = false,
                }
			},
		})
	end,
}
