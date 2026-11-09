return function(device)
    hl.on("hyprland.start", function()
        -- Common applications
        hl.exec_cmd("nm-applet")
        hl.exec_cmd("hyprpaper")
        hl.exec_cmd("dunst")
        hl.exec_cmd("systemctl --user start hyprpolkitagent")
        hl.exec_cmd("megasync")
        
        -- Device-specific applications
        if device == "desktop" then
            hl.exec_cmd("otd-daemon")
            hl.exec_cmd("fcitx5")
            -- Status bar
            hl.exec_cmd(
                "waybar --config ~/.config/waybar/hyprland/desktop/config.jsonc --style ~/.config/waybar/hyprland/desktop/style.css"
            )
        elseif device == "laptop" then
            
        end

    end)
end