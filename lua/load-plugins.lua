vim.cmd [[packadd packer.nvim]]

return require('packer').startup( function(use)
  -- Packer can manage itself
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-fugitive'
  use 'mbbill/undotree'
  use 'folke/tokyonight.nvim'
  use 'theprimeagen/harpoon' 
  use "nvim-lua/plenary.nvim" 
  use "tpope/vim-commentary"
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

