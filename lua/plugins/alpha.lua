return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Set header
        dashboard.section.header.val = {
            "                                                     ",
            "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
            "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
            "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
            "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
            "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
            "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
            "                                                     ",
        }
        local logo = [[
		    ⠀⠀⠀⢀⣀⣤⣤⣤⣤⣄⡀⠀⠀⠀⠀
		    ⠀⢀⣤⣾⣿⣾⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀
		    ⢠⣾⣿⢛⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀
		    ⣾⣯⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧
		    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
		    ⣿⡿⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠻⢿⡵
		    ⢸⡇⠀⠀⠉⠛⠛⣿⣿⠛⠛⠉⠀⠀⣿⡇
		    ⢸⣿⣀⠀⢀⣠⣴⡇⠹⣦⣄⡀⠀⣠⣿⡇
		    ⠈⠻⠿⠿⣟⣿⣿⣦⣤⣼⣿⣿⠿⠿⠟⠀
		    ⠀⠀⠀⠀⠸⡿⣿⣿⢿⡿⢿⠇⠀⠀⠀⠀
		    ⠀⠀⠀⠀⠀⠀⠈⠁⠈⠁⠀⠀⠀⠀⠀⠀

	    ▗▖  ▗▖▗▞▀▚▖ ▄▄▄  ▄   ▄ ▄ ▄▄▄▄  
	    ▐▛▚▖▐▌▐▛▀▀▘█   █ █   █ ▄ █ █ █ 
	    ▐▌ ▝▜▌▝▚▄▄▖▀▄▄▄▀  ▀▄▀  █ █   █ 
	    ▐▌  ▐▌                 █       
	]]

        dashboard.section.header.val = vim.split(logo, "\n")
        -- Set menu
        dashboard.section.buttons.val = {
            dashboard.button("e", "  > New file", "<cmd>ene<CR>"),
            dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
            dashboard.button("SPC ff", "󰍉  > Find File", "<cmd>Telescope find_files<CR>"),
            dashboard.button("SPC fg", "󰈞  > Find Word", "<cmd>Telescope live_grep<CR>"),
            dashboard.button("q", "󰗼 > Quit Nvim", "<cmd>qa<CR>"),
        }

        -- Set footer
        --   NOTE: This is currently a feature in my fork of alpha-nvim (opened PR #21, will update snippet if added to main)
        --   To see test this yourself, add the function as a dependecy in packer and uncomment the footer lines
        --   ```init.lua
        --   return require('packer').startup(function()
        --       use 'wbthomason/packer.nvim'
        --       use {
        --           'goolord/alpha-nvim', branch = 'feature/startify-fortune',
        --           requires = {'BlakeJC94/alpha-nvim-fortune'},
        --           config = function() require("config.alpha") end
        --       }
        --   end)
        --   ```
        -- local fortune = require("alpha.fortune")
        -- dashboard.section.footer.val = fortune()

        -- Send config to alpha
        alpha.setup(dashboard.opts)

        -- Disable folding on alpha buffer
        vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
    end
}
