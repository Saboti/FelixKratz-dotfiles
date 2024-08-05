local settings = require("settings")
local icons = require("icons")

local meeting_bar = sbar.add("alias", "widgets.meetingbar", {
	type = "meetingbar",
	position = "right",
	update_freq = 10,
	icon = {
		font = {
			family = settings.font.family,
			style = settings.font.style_map["Regular"],
			size = 14.0,
		},
	},
	label = {
		font = {
			family = settings.font.family,
			style = settings.font.style_map["Regular"],
			size = 14.0,
		},
	},
	background = {
		padding_right = 0,
		padding_left = 0,
	},
})
