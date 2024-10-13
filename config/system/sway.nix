{ pkgs, ... }: {
  # Sway
  programs.sway = {
  	enable = true;
    package = pkgs.swayfx;
  	wrapperFeatures.gtk = true;
  };
  programs.xwayland.enable = true;
  services.dbus.enable = true;
  xdg.portal = {
  	enable = true;
  	wlr.enable = true;
  	extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  	xdgOpenUsePortal = true;
  	config.common.default = [
  	  "gtk"
  	  "wlr"	
  	];
  };
  
  # Swaylock
  security.pam.services.swaylock = {
    text = "auth include login";
  };
}