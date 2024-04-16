return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  --Lsp related
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "css-lsp",
        "typescript-language-server",
        "vue-language-server",
        "volar",
        "tailwindcss",
        "emmet_ls",
        "jsonls",
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    config = function()
      require "config.null"
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
      "nvimtools/none-ls-extras.nvim",
    },
    opts = {
      ensure_installed = {
        "eslint_d",
        "prettierd",
        "stylua",
      },
      handlers = {},
    },
  },
  { "neovim/nvim-lspconfig" },
  --
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "scss",
        "vue",
        "javascript",
        "typescript",
      },
      highlight = {
        enable = true,
      },
    },
  },
}
