require('options')
require('keymaps')
require('plugins')
-- require('colorscheme')
require('lsp')

vim.g.mapleader = ' '

function selectOption()
    local options = {'Option 1', 'Option 2', 'Option 3'}  -- Define a list of options
    local results = require('telescope.pickers').new({}, {
        prompt_title = "Select an option",
        finder = require('telescope.finders').new_table({results = options}),
        sorter = require('telescope.config').values.generic_sorter({}),
    }):find()
    if not results then
        print("No option selected")
    else
        local selected_option = results[1].value
        print("Selected option: " .. selected_option)
        -- Process the selected option here
    end
end

-- Buffer (b)
vim.api.nvim_set_keymap('n', '<Leader>bb', ':Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>bd', ':bd!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>bp', ':bprev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '[b', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']b', ':bnext<CR>', { noremap = true, silent = true })

-- File (f)
vim.api.nvim_set_keymap('n', '<Leader>fs', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>pf', ':Telescope find_files<CR>', { noremap = true, silent = true })

-- Apps (x)
vim.api.nvim_set_keymap('n', '<Leader>xg', ':ChatGPT<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>xd', ':Explore<CR>', { noremap = true, silent = true })

-- Config (h)
vim.api.nvim_set_keymap('n', '<Leader>hr', ':source $MYVIMRC<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>hh', ':e $MYVIMRC<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>hf', ':Telescope help_tags<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>qq', ':wq<CR>', { noremap = true, silent = true })

-- Projects
vim.api.nvim_set_keymap('n', '<Leader>pp', ':Telescope projects<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>pg', ':Telescope live_grep<CR>', { noremap = true, silent = true })

-- Git (g)
vim.api.nvim_set_keymap('n', '<Leader>gg', ':Neogit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>gl', ':Neogit log<CR>', { noremap = true, silent = true })

-- Copilot (c)
vim.api.nvim_set_keymap('i', '<C-CR>', 'copilot#Accept("<CR>")', { silent = true, expr = true, script = true })
--vim.api.nvim_set_keymap('n', '<Leader>Cc', ':Copilot enable<CR>', { silent = true, expr = true, script = true })
--vim.api.nvim_set_keymap('n', '<Leader>CC', ':Copilot disable<CR>', { silent = true, expr = true, script = true })





