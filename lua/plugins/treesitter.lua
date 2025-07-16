return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            highlight = { enable = true },
            indent = { enable = true },
            autotage = { enable = true },
            ensure_installed = {
                "lua",
                "python",
                "sql",
                "yaml",
                "git_config",
                "git_rebase",
                "gitcommit",
                "gitattributes",
                "json",
                "markdown",
                "markdown_inline",
            },
            auto_install = false,
        })
    end,
}
