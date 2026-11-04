-- https://wiki.hypr.land/configuring/
-- either desktop or laptop
local device = "desktop"
require("devices." .. device)

---- MONITORS
require("config.monitors")


---- MY PROGRAMS 
local programs = {
    terminal    = "kitty",
    fileManager = "nemo",
    menu        = "wofi --show drun",
}


---- AUTOSTART
-- See https://wiki.hypr.land/configuring/core/autostart/
require("config.autostart")(device)


---- ENVIRONMENT VARIABLES
-- See https://wiki.hypr.land/configuring/core/environment-variables/
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

----- PERMISSIONS

-- See https://wiki.hypr.land/configuring/core/advanced-configuration/permissions/
-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly
-- for security reasons

-- hl.config({
--   ecosystem = {
--     enforce_permissions = true,
--   },
-- })

-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
-- hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")


---- LOOK AND FEEL
require("config.appearance")(device)
require("config.animations")
require("config.layouts")

----  MISC
hl.config({
    misc = {
        force_default_wallpaper = -1,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = false, -- If true disables the random hyprland logo / anime girl background. :(
    },
})

---- INPUT 
require("config.input")

---- KEYBINDINGS
require("config.keybinds")(programs)

---- WINDOWS AND WORKSPACES
--------------------------------
require("config.windowrules")
