-- Thanks to original theme for existing https://github.com/microsoft/vscode/blob/main/extensions/theme-defaults/themes/dark_plus.json
-- siduck modified it, but it didn't quite look like vscode. the comments were completely unreadable with white in the background since I use transparency with Alacritty.
-- i took matters into my own hands. i used a colorpicker on many of the VSCode text elements and added many treesitter categories
-- it's "close enough" for the languages that i didn't explicitly dive into. i targeted python, tsx, html, css, cpp, c, tex, lua, and markdown to make them all look as similar to vscode as possible.
-- comments not being green was the biggest motivation for this. everything else came after because i'm a perfectionist

local M = {}

M.base_30 = {
  white = "#dee1e6",
  darker_black = "#1a1a1a",
  black = "#1E1E1E", --  nvim bg
  black2 = "#252525",
  one_bg = "#282828",
  one_bg2 = "#313131",
  one_bg3 = "#3a3a3a",
  grey = "#444444",
  grey_fg = "#4e4e4e",
  grey_fg2 = "#585858",
  light_grey = "#888888",
  middle_grey = "#666666",
  red = "#D16969",
  baby_pink = "#ea696f",
  pink = "#bb7cb6",
  line = "#2e2e2e", -- for lines like vertsplit
  green = "#B5CEA8",
  green1 = "#4AC5AD",
  comment = "#6A9955",
  vibrant_green = "#bfd8b2",
  blue = "#569CD6",
  nord_blue = "#60a6e0",
  yellow = "#D7BA7D",
  sun = "#e1c487",
  purple = "#c68aee",
  dark_purple = "#bf84bf",
  teal = "#4294D6",
  orange = "#d3967d",
  cyan = "#9CDCFE",
  statusline_bg = "#242424",
  lightbg = "#303030",
  pmenu_bg = "#60a6e0",
  folder_bg = "#7A8A92",
}

M.base_16 = {
  --author of this template Tomas Iser, @tomasiser on github,
  base00 = "#1E1E1E",
  base01 = "#262626",
  base02 = "#303030",
  base03 = "#3C3C3C",
  base04 = "#464646",
  base05 = "#D4D4D4",
  base06 = "#E9E9E9",
  base07 = "#FFFFFF",
  base08 = "#D16969",
  base09 = "#B5CEA8",
  base0A = "#D7BA7D",
  base0B = "#BD8D78",
  base0C = "#9CDCFE",
  base0D = "#DCDCAA",
  base0E = "#C586C0",
  base0F = "#E9E9E9",
}

M.polish_hl = {
  treesitter = {
    ["@keyword"] = { fg = M.base_30.blue },
    ["@keyword.return"] = { fg = M.base_30.dark_purple },
    ["@keyword.function"] = { fg = M.base_30.teal },
    ["@keyword.repeat"] = { fg = M.base_30.dark_purple },
    ["@keyword.operator"] = { fg = M.base_30.dark_purple },
    ["@keyword.import"] = { fg = M.base_30.dark_purple },
    ["@keyword.directive"] = { fg = M.base_30.dark_purple },
    ["@keyword.directive.markdown"] = { fg = M.base_16.base0B },
    ["@variable"] = { fg = M.base_30.cyan },
    ["@variable.parameter"] = { fg = M.base_30.cyan },
    ["@variable.member"] = { fg = M.base_30.cyan},
    ["@variable.member.lua"] = { fg = M.base_30.green1},
    ["@variable.member.key"] = { fg = M.base_30.green1 },
    ["@comment"] = { fg = M.base_30.comment },
    ["@module"] = { fg = M.base_30.green1},
    ["@character"] = { fg = M.base_16.base0B},
    ["@comment.documentation"] = { fg = M.base_30.comment },
    ["@function.macro"] = { fg = M.base_16.base0D},
    ["@type"] = { fg = M.base_30.green1 },
    ["@type.builtin"] = { fg = M.base_30.blue },
    ["@type.css"] = { fg = M.base_16.base0A },
    ["@tag"] = { fg = M.base_30.green1 },
    ["@tag.html"] = { fg = M.base_30.blue },
    ["@tag.attribute"] = { fg = M.base_30.cyan },
    ["@constant"] = { fg = M.base_30.blue },
    ["@constant.builtin"] = { fg = M.base_30.blue },
    ["@property"] = { fg = M.base_30.cyan },
    ["@constructor"] = { fg = M.base_16.base0D },
    ["texCmd"] = { fg = M.base_30.dark_purple },
    ["texCmdTitle"] = { fg = M.base_16.base0D },
    ["texCmdAuthor"] = { fg = M.base_16.base0D },
    ["texCmdPart"] = { fg = M.base_16.base0D },
    ["texCmdNewcmd"] = { fg = M.base_30.blue },
    ["texCmdInput"] = { fg = M.base_30.dark_purple },
    ["texCmdClass"] = { fg = M.base_30.dark_purple },
    ["texEnvArgName"] = { fg = M.base_30.cyan },
    ["texFileArg"] = { fg = M.base_30.green1 },
    ["texFilesOpt"] = { fg = M.base_30.cyan },
    ["texMathCmd"] = { fg = M.base_30.green1 },
    ["texMathSymbol"] = { fg = M.base_30.blue },
    ["@markup.heading.1.markdown"] = { fg = M.base_30.blue },
    ["@markup.heading.2.markdown"] = { fg = M.base_30.green1 },
    ["@markup.heading.3.markdown"] = { fg = M.base_16.base08},
    ["@markup.raw.block.markdown"] = { bg = M.base_30.one_bg2},
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "vscode_dark")

return M
