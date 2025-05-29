return {
    { -- helps with ssh tunneling and poying to clipboard
        "ojroques/vim-oscyank",
    },
    { -- git plugin
        "tpope/vim-fugitive",
        config = function()
            vim.keymap.set("n", "<leader>gb", "<cmd>Git blame<CR>", { desc = "Toggle Git Blame" })
        end,
    },
    "christoomey/vim-tmux-navigator",
}
