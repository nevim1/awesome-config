local theme = dofile("/usr/share/awesome/themes/default/theme.lua")
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
return theme
