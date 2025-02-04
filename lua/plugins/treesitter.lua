return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "lua", "c", "cpp", "dart" },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      -- Disable tree-sitter's built-in highlighter if necessary
      incremental_selection = {
        enable = false,
      },
      -- Optional: Disable other features to narrow down the issue
      indent = { enable = false },
    })
  end,
}
