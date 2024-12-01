{ pkgs, lib, ... }: {
  # More Lextop-specific config in /home/sway/extraconfig.nix
  
    # Cooling management
  services.thermald.enable = lib.mkDefault true;

  # tlp defaults to "powersave", which doesn't exist on this laptop
  services.tlp.settings = {
    CPU_SCALING_GOVERNOR_ON_BAT = "schedutil";
  };

  # Ignore lid closing
  services.logind = {
    lidSwitch = "ignore";
    lidSwitchExternalPower = "ignore";
  };

  # Keyboard Backlight
  programs.light.enable = true;

}