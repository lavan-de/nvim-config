return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require('lualine').setup({
      options = {
        theme = 'everforest';
        icons_enabled = true;
      }
    })
  end
}
