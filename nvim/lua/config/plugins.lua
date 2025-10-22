local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- Completion framework
Plug 'hrsh7th/nvim-cmp'

-- LSP completion source for nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'

-- Snippet completion source for nvim-cmp
Plug 'hrsh7th/cmp-vsnip'

-- Other useful completion sources
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'

-- Snippet engine
Plug 'hrsh7th/vim-vsnip'

-- Collection of common configurations for the Nvim LSP client
Plug ('neovim/nvim-lspconfig')

-- To enable more of the features of rust-analyzer, such as inlay hints and more!
Plug 'mrcjkb/rustaceanvim'

-- A highly customizable theme for vim and neovim with support for lsp, treesitter and a variety of plugins.
Plug 'EdenEast/nightfox.nvim'

-- Fern (furn) is a general purpose asynchronous tree viewer written in pure Vim script.
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'

-- nvim-dap is a Debug Adapter Protocol client implementation
Plug 'mfussenegger/nvim-dap'
Plug 'nvim-lua/plenary.nvim'

-- Vim plugin for generating images of source code using
-- Plug 'segeljakt/vim-silicon'

-- Vim plugin for git
Plug 'tanvirtin/vgit.nvim'

-- Plugin for golang
Plug('fatih/vim-go', { ['do'] = ':GoUpdateBinaries' })

-- Wakapi time tracking plugin
-- Plug 'wakatime/vim-wakatime'

Plug('iamcco/markdown-preview.nvim', { ['do'] = 'cd app && npx --yes yarn install' })

-- Filetype and syntax plugin for LaTeX files.
Plug 'lervag/vimtex'

-- General-purpose command-line fuzzy finder. 
Plug ('nvim-telescope/telescope-fzf-native.nvim', {['do'] = function() 
    vim.call("cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release")
end
})

-- Highly extendable fuzzy finder over lists
Plug('nvim-telescope/telescope.nvim', {['tag'] = '0.1.8' })

-- Treesitter configurations and abstraction layer for Neovim. 
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

-- An extension for nvim-dap providing configurations for launching go debugger (delve) and debugging individual tests
Plug 'leoluz/nvim-dap-go'
-- A library for asynchronous IO in Neovim
Plug 'nvim-neotest/nvim-nio'
-- A UI for nvim-dap 
Plug 'rcarriga/nvim-dap-ui'

-- ecplise.jdt.ls Extensions for the built-in LSP support
Plug 'mfussenegger/nvim-jdtls'

vim.call('plug#end')

require('config/plugins/markdown-preview')
-- require('config/plugins/vim-silicon')
require('config/plugins/fern')
require('config/plugins/nightfox')
require('config/plugins/nvim-cmp')
require('config/plugins/lsp/servers')
require('config/plugins/rustaceanvim')
require('config/plugins/vgit')
require('config/plugins/vim-go')
require('config/plugins/vimtex')
require('config/plugins/nvim-treesitter')
require('config/plugins/telescope')
require('config/plugins/dap/nvim-dap')
require('config/plugins/dap/nvim-dap-go')
require('config/plugins/dap/nvim-dap-ui')
-- require('config/plugins/jdtls')
