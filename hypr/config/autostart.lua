return function(device)
    hl.on("hyprland.start", function()
        -- Common applications
        hl.exec_cmd("nm-applet")
        hl.exec_cmd("hyprpaper")
        hl.exec_cmd("dunst")
        hl.exec_cmd("systemctl --user start hyprpolkitagent")
        hl.exec_cmd("megasync")
        hl.exec_cmd("otd-daemon")
        
        -- Device-specific applications
        if device == "desktop" then
            hl.exec_cmd("fcitx5")
        elseif device == "thinkpad-x240" then
            
        end

        -- Status bar
        hl.exec_cmd(
            "waybar --config ~/.config/waybar/hyprlnd/config.jsonc --style ~/.config/waybar/hyprlnd/style.css"
        )
    end)
end