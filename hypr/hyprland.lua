require("config.monitors")
require("config.global_variables")
require("config.autostart")
require("config.keybinds")

-- Environment Variables
hl.env("HYPRCURSOR_THEME", "Nordzy-cursors")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("HYPRSHOT_DIRl", "$HOME/Pictures/Screenshots/")

require("config.visuals")
require("config.input")
require("config.workspaces")
