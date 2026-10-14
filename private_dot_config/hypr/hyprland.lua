-- Refer to the wiki for more information.
-- https://wiki.hypr.land/Configuring/Start/

require("monitors")
require("input")
require("bindings")
require("environment")
require("looknfeel")
require("permissions")
require("autostart")

require("window-rules")

-- Everything in these directories is loaded automatically;
-- drop new per-app/per-game config files in there, no edits needed here.
require("./apps/*")
require("./apps/games/*")
