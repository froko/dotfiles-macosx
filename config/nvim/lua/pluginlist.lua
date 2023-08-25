return {
  -- Colorscheme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        vim.cmd("colorscheme catppuccin-mocha")
    end
  },

  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
  },

  -- Lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        require("lualine").setup({
            icons_enabled = true,
            theme = 'catppuccin-mocha',
        })
    end,
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  },

  -- Telescope
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope-fzy-native.nvim",
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-treesitter",
      "nvim-web-devicons",
      "nvim-telescope/telescope-fzy-native.nvim",
      "plenary.nvim",
    },
    keys = {
      { "<leader>fg", "<cmd>Telescope live_grep<CR>" },
      { "<leader>fc", "<cmd>Telescope current_buffer_fuzzy_find<CR>" },
    },
    cmd = "Telescope",
  },

  -- Smart Open
  "kkharji/sqlite.lua",
  {
    "danielfalk/smart-open.nvim",
    dependencies = {
      "telescope.nvim",
      "nvim-telescope/telescope-fzy-native.nvim",
      "sqlite.lua",
    },
    keys = {
      {
        "<leader>ff",
        "<cmd>lua require('telescope').extensions.smart_open.smart_open({ cwd_only = true })<CR>",
      },
    },
  },

  -- Mason & LSP
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

  -- Completion
  {
      "hrsh7th/nvim-cmp",
      dependencies = {
          "L3MON4D3/LuaSnip",
          "saadparwaiz1/cmp_luasnip",
          "rafamadriz/friendly-snippets",
          "hrsh7th/cmp-nvim-lsp",
          
      },
  },
}