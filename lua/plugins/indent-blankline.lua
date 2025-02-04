return {
  "lukas-reineke/indent-blankline.nvim",
  version = "v2",  -- Ensure you are using version 2
  config = function()
    require("indent_blankline").setup({
      char = "│",
      filetype_exclude = {"help", "terminal", "dashboard"},
      show_trailing_blankline_indent = false,
      show_first_indent_level = true,
      use_treesitter = true,
      show_current_context = true,
      context_char = "▏",
    })
  end,
}

