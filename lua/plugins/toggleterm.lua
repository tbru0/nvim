return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = function()
            require("toggleterm").setup({
                direction = "float",
                float_opts = {
                    border = "curved",
                    width = 200,
                    height = 30,
                    winblend = 3,
                },
            })
        end,
    },
}
