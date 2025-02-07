return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "bashls", "clangd" },
        handlers = {
          clangd = function(_, opts)
            -- Setup clangd_extensions with the provided options from mason-lspconfig
            require("clangd_extensions").setup({
              server = opts,
            })
          end,
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Just ensure basic clangd setup here without redundant setup of extensions
      require("lspconfig").clangd.setup({
        capabilities = {
          offsetEncoding = { "utf-16" },
        },
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          "--function-arg-placeholders",
          "--fallback-style=llvm",
        },
        init_options = {
          usePlaceholders = true,
          completeUnimported = true,
          clangdFileStatus = true,
        },
      })
    end,
  },
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup({
        -- Custom configurations for lspsaga
        border_style = "rounded",  -- Example custom setting
        rename_action_keys = {
          quit = "<Esc>",  -- Keybinding to quit the rename interface
          exec = "<CR>",   -- Keybinding to execute the rename action
        },
        code_action = {
          enable = true,
          sign = true,
          sign_priority = 20,
          virtual_text = true,
        },
        -- Add more custom settings as needed
      })
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",  -- Recommended for better LSP support
      "nvim-tree/nvim-web-devicons",      -- Adds icons (optional)
    },
  },
}

