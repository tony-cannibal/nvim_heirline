

--{{ Sonokai Styles
--   'default'
--   'atlantis'
--   'andromeda'
--   'shusia'
--   'maia'
--   'espresso'
--}}

function ColorScheme(color, trans)

    color = color or "everforest"
    -- Set Transparent Background

    vim.cmd.colorscheme(color)

    if trans == true then
        vim.cmd[[
            hi Normal guibg=NONE ctermbg=NONE
        ]]
        -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
end

local transparent = false

local color_chemes = {
    "base16-solarized-dark",
    "gruvbox",
    "solarized",
    "base16-gruvbox-dark-medium",
    "everforest",
}

-- 8 = xresources

ColorScheme(color_chemes[4], transparent)
