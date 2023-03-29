

--{{ Sonokai Styles
--   'default'
--   'atlantis'
--   'andromeda'
--   'shusia'
--   'maia'
--   'espresso'
--}}

function ColorScheme(color, trans)

    color = color
    -- Set Transparent Background

    vim.cmd.colorscheme(color)

    if color == "gruvbox" then
        vim.cmd[[
            set background=light
            let g:gruvbox_contrast_dark = 'soft'
        ]]
    end

    if trans == true then
        vim.cmd[[
            hi Normal guibg=NONE ctermbg=NONE
        ]]
        -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
end

local transparent = false

local color_schemes = {
    "base16-solarized-dark",            -- 1
    "gruvbox",                          -- 2
    "solarized",                        -- 3
    "base16-gruvbox-dark-medium",       -- 4
    "everforest",                       -- 5
    "custom",                           -- 6
    "tokyonight-night"
}

-- 8 = xresources

ColorScheme(color_schemes[7], transparent)
-- ColorScheme("gruvbox-material", transparent)
