{ pkgs, ... }: {

  programs.waybar.settings.mainBar = {
    
    network = {
      interval = 1;
      format-alt = "{ifname}: {ipaddr}/{cidr}";
      format-disconnected = "Disconnected ⚠";
      format-ethernet = "{ifname}: {ipaddr}/{cidr}   up: {bandwidthUpBits} down: {bandwidthDownBits}";
      format-linked = "{ifname} (No IP) ";
      format-wifi = "{essid} ({signalStrength}%) ";
    };
  };
}