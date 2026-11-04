return function(device)
    local theme = require("themes." .. device)

    -- Refer to https://wiki.hypr.land/configuring/core/config-options/
    hl.config({
        general = {
            gaps_in  = 2,
            gaps_out = 6,
            border_size = 2,

            col = {
                active_border = theme.active_border,
                inactive_border = theme.inactive_border,
            },
            resize_on_border = true,

            -- Please see https://wiki.hypr.land/configuring/extra/tearing/ before you turn this on
            allow_tearing = false,
            layout = "dwindle",
        },

        decoration = {
            rounding       = 3,
            rounding_power = 2,

            -- Change transparency of focused and unfocused windows
            active_opacity   = 1.0,
            inactive_opacity = 1.0,

            shadow = {
                enabled      = false,
                range        = 4,
                render_power = 3,
                color        = 0xee1a1a1a,
            },

            blur = {
                enabled   = true,
                size      = 3,
                passes    = 1,
                vibrancy  = 0.1696,
            },
        },

        animations = {
            enabled = true,
        },
    })
end