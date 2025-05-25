return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local nvimtree = require("nvim-tree")

        -- Désactive netrw pour éviter les conflits
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- Configuration de nvim-tree
        nvimtree.setup({
            view = {
                adaptive_size = true,
                width = 35,
            },
            renderer = {
                indent_markers = {
                    enable = true,
                },
                icons = {
                    glyphs = {
                        folder = {
                            arrow_closed = "→", -- Icône quand le dossier est fermé
                            arrow_open = "↓", -- Icône quand le dossier est ouvert
                        },
                    },
                },
            },
            git = {
                ignore = false,
            },
            update_focused_file = {
                enable = true,
                update_cwd = true,
            },
        })

        -- Raccourcis clavier
        vim.keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
        vim.keymap.set("n", "<leader>ef", ":NvimTreeFindFileToggle<CR>",
            { desc = "Toggle file explorer on current file" })
        vim.keymap.set("n", "<leader>ec", ":NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
        vim.keymap.set("n", "<leader>er", ":NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
        vim.keymap.set("n", "<leader>eo", "<C-w>p", { desc = "Focus back to current file" })
    end,
}
