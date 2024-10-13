{ pkgs, ... }: 	{
  wayland.windowManager.sway.extraConfig = 
    ''
    # Cursor Theme
    #exec_always gsettings set org.gnome.desktop.interface cursor-theme "capitaine-cursors"

    # Brightness
    bindsym XF86MonBrightnessDown exec light -U 5
    bindsym XF86MonBrightnessUp exec light -A 5

    # Volume
    bindsym XF86AudioMute exec pactl set-sink-mute @DEFAULT_SINK@ toggle
    bindsym XF86AudioRaiseVolume exec pactl set-sink-volume @DEFAULT_SINK@ +5%
    bindsym XF86AudioLowerVolume exec pactl set-sink-volume @DEFAULT_SINK@ -5%

    # Wallpaper

    output * bg /etc/nixos/home/sway/wallpaper/CryingBlossoms16by9Scaled.png fill
   
    #blur on
    #blur_xray on
    #blur_passes 3
    #blur_radius 10	

    corner_radius 15

    #default_dim_inactive 0.5

    #shadows on
    #shadow_on_csd off
    #shadow_blur_radius 10
    #shadow_color #f4b8e4

    # Startup Apps, TODO
    '';
}