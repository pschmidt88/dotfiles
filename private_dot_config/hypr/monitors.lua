-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
	output = "DP-2",
	mode = "3440x1440@165",
	position = "1080x500",
	scale = "auto",
})

hl.monitor({
	output = "DP-1",
	mode = "1920x1080@144",
	position = "0x0",
	transform = 1,
	scale = "auto",
})
