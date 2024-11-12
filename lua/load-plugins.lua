vim.cmd [[packadd packer.nvim]]

return require('packer').startup( function(use)
  -- Packer can manage itself
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"
  use "wbthomason/packer.nvim"
  use "tpope/vim-fugitive"
  use "mbbill/undotree"
  use "folke/tokyonight.nvim"
  use "theprimeagen/harpoon" 
  use "nvim-lua/plenary.nvim" 
  use "tpope/vim-commentary"
  use "tpope/vim-repeat"
  use "tpope/vim-surround"
  use 'iamcco/markdown-preview.nvim'


use({
    'MeanderingProgrammer/render-markdown.nvim',
    after = { 'nvim-treesitter' },
    requires = { 'echasnovski/mini.nvim', opt = true }, -- if you use the mini.nvim suite
    -- requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
    equires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
    config = function()
        require('render-markdown').setup({})

    end,
})
  use {
    's1n7ax/nvim-window-picker',
    tag = 'v2.*',
    config = function()
        require'window-picker'.setup()
    end,
}

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  requires = { {'nvim-lua/plenary.nvim'} }
}


use {
    'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' 
  }

use {
    'nvim-treesitter/nvim-treesitter',
     run = function()
     local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
     ts_update()
     end,
    }


  end )
