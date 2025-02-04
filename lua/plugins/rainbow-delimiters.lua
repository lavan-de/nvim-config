-- lua/plugins/rainbow-delimiters.lua
return {
  "HiPhish/rainbow-delimiters.nvim",
  config = function()
    -- Configure the plugin using vim.g
    vim.g.rainbow_delimiters = {
      highlight = {
        enable = true,
        colors = {
          "#ff6347",  -- Red for first level
          "#4682b4",  -- Blue for second level
          "#32cd32",  -- Green for third level
        },
      },
    }
  end,
}

