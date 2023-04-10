local heirline_ok, heirline = pcall(require, "heirline")
if not heirline_ok then
    return
end

local utils = require("heirline.utils")

require("luis.heirline.colors")

local ViMode = require("luis.heirline.mode")
local Location = require("luis.heirline.ruler")
local FileName = require("luis.heirline.file")
local File = require("luis.heirline.fileutils")
local Diagnostics = require("luis.heirline.diagnostics")
local LSPActive = require("luis.heirline.lsp-active")
local GitStatus =  require("luis.heirline.git-status")

local Align = { provider = "%=" }
local Space = { provider = " " }

-- ViMode = utils.surround({ "", "" }, "green_bg", { ViMode })
ViMode = utils.surround({ "", "" }, "#000000", { ViMode })

local StatusLine = {
    {{{ ViMode},{ Diagnostics }, {GitStatus}},
    { Align },
    {{LSPActive},{ File.FileFormat},{ FileName },{ Location.Ruler, Location.ScrollBar, Space, hl = { bg = "#000000"} }}}
}

heirline.setup({
    statusline = StatusLine,
})
