local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end
--return {
--   {
--	"folke/tokyonight.nvim",
--	config = function()
--	    vim.cmd.colorscheme "tokyonight"
--	    enable_transparency()
--	end
--    },
--    {
--	"nvim-lualine/lualine.nvim",
--	dependencies = {
--	    "nvim-tree/nvim-web-devicons",
--	},
--	opts = {
--	    theme = "tokyonight",
--	}
--    },
--}

--return {
--    {
--        "shaunsingh/moonlight.nvim",
--        config = function()
--            vim.g.moonlight_transparent = true
--            vim.cmd.colorscheme("moonlight")
--            enable_transparency()
--        end,
--    },
--    {
--        "nvim-lualine/lualine.nvim",
--        dependencies = {
--            "nvim-tree/nvim-web-devicons",
--        },
--        opts = {
--            theme = "moonlight",
--        },
--    },
--}

return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "macchiato", -- latte, frappe, macchiato, mocha
                transparent_background = true, -- équivalent à moonlight_transparent
            })
            vim.cmd.colorscheme("catppuccin")
            vim.api.nvim_set_hl(0, "@string.python", { fg = "#c974e0" })
            enable_transparency()
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            theme = "catppuccin",
        },
    },
}
