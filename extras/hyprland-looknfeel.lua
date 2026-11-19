-- Wars Star — optional Hyprland look & feel tweaks.
--
-- `omarchy theme install` never loads Lua from a cloned theme, so these are
-- opt-in. The active border color is already generated from `accent` in
-- colors.toml. To use them, paste this block into ~/.config/hypr/looknfeel.lua.

hl.config({
  decoration = {
    rounding = 4,
    rounding_power = 3,

    blur = {
      enabled = true,
      size = 3,
      passes = 2,
    },
  },
})

-- Override the stock default-opacity rule (0.985 0.96) with something
-- more transparent. Apps that removed the tag keep their own opacity.
o.window({ tag = "default-opacity" }, { opacity = "0.95 0.92" })
