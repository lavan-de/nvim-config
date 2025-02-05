-- In nvim/lua/plugins.lua
return {
    -- Other plugins
    {
        'windwp/nvim-autopairs',
        config = function()
            -- Configuration for nvim-autopairs
            local npairs = require('nvim-autopairs')

            npairs.setup({
                check_ts = true,  -- Enable tree-sitter integration (recommended)
                ts_config = {
                    lua = {'string', 'source'},  -- Adjust for specific languages
                },
                disable_filetype = { "TelescopePrompt", "spectre_panel" },  -- Disable in certain filetypes
                fast_wrap = {
                    map = "<M-e>",  -- Keymap for quick wrapping
                    chars = { "{", "[", "(", '"', "'" },  -- Characters to wrap
                    pattern = string.gsub([[ [%'%"%)%>%]%)%} ]],"%s+", ""),
                    offset = 0,  -- Offset from the cursor position
                    end_key = "$",  -- End key for wrapping
                }
            })
        end
    },
}

