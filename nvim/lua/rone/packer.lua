return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")
    use("folke/tokyonight.nvim")
    use("gruvbox-community/gruvbox")
    use({
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        }
    })
    use({
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end
    })
    use("p00f/nvim-ts-rainbow")
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    })
end)


