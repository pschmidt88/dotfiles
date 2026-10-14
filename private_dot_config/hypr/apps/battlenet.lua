-- Battle.net client: always floating

hl.window_rule({
	name = "battlenet-float",
	match = { title = "^Battle\\.net$" },
	float = true,
})
