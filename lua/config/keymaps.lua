local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)

-- ToggleTerm
map("n", "<leader>t", "<cmd>ToggleTerm direction=float<CR>", opts)

-- Tree
map("n", "<C-n>", "<cmd>Neotree toggle<CR>", opts)
map("n", "<leader>n", "<cmd>Neotree focus<CR>", opts)

-- LSP
map("n", "<leader>d", vim.lsp.buf.hover, {})
map("n", "<C-d>", vim.lsp.buf.definition, {})
map("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- None-ls
map("n", "<C-s>", vim.lsp.buf.format, {})

-- Alpha
map("n", "<leader>q", "<cmd>Alpha<CR>", opts)

-- Comment
map("n", "<C-_>", function()
    require("Comment.api").toggle.linewise.current()
end, opts)

-- CMake
map("n", "<leader>r", "<cmd>CMakeRun<CR>", opts)
