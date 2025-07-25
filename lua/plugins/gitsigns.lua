return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup({
            current_line_blame = true,
            current_line_blame_opts = {
                virt_text = true,
                virt_text_pos = "eol", -- 'eol' = fin de ligne
                delay = 0, -- aucun délai d’affichage
                ignore_whitespace = false,
            },
            current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
        })

        vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", { desc = "Show a preview hunk" })
        vim.keymap.set("n", "<leader>gu", "<cmd>Gitsigns reset_hunk<CR>", { desc = "Undo/reset hunk" })
        vim.keymap.set(
            "n",
            "<leader>gr",
            "<cmd>Gitsigns reset_buffer<CR>",
            { desc = "Reset entire buffer (all changes on current file)" }
        )
    end,
}
