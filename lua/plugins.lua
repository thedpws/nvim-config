local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    'tanvirtin/monokai.nvim', -- Color Scheme

    -- LSP manager
    "williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    { -- ChatGPT
        'jackMort/ChatGPT.nvim',
        config = function()
            require('chatgpt').setup()
        end,
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "folke/trouble.nvim",
            "nvim-telescope/telescope.nvim",
        }
    },

    "nvim-telescope/telescope.nvim", -- Fuzzy Finder

    { -- Projects
        "ahmedkhalf/project.nvim",
        config = function()
            require('project_nvim').setup {
                detection_methods = {'lsp', 'pattern'},
                patterns = {'.git'}
            }
        end
    },

    {   -- Git
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim",
            "nvim-telescope/telescope.nvim",
        },
        config = true
    },

})

