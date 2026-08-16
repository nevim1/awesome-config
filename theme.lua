local gears = require("gears")
local theme = dofile(gears.filesystem.get_themes_dir() .. "default/theme.lua")
theme.wallpaper_cmd = { }
theme.wallpaper = function(s)
	if s then
		if s.geometry.width / s.geometry.height > 1.5 then
			return "/home/nevim/.config/awesome/wallpaper" -- this is the wallpaper with picture
		else
			return "/home/nevim/.config/awesome/plain-wallpaper" -- this is without
		end
	end
end
theme.font = "Source Code Pro 10"
return theme
