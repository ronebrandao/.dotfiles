local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]]

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

    --code highlighting
    use({
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end
    })
    use("mrjones2014/nvim-ts-rainbow")

    --status bar
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    })

    --lsp
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/mason.nvim" -- simple to use language server installer
    use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer 
    use("jose-elias-alvarez/null-ls.nvim")

    --search
    use({
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    })

    -- cmp plugins
    use("hrsh7th/nvim-cmp") -- The completion plugin
    use("hrsh7th/cmp-buffer") -- buffer completions
    use("hrsh7th/cmp-path") -- path completions
    use("hrsh7th/cmp-cmdline") -- cmdline completions
    use("saadparwaiz1/cmp_luasnip") -- snippet completions
    use("hrsh7th/cmp-nvim-lsp")

    -- snippets
    use("L3MON4D3/LuaSnip") --snippet engine
    use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

end)


