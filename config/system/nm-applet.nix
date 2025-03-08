{ ... }:
{
  programs.nm-applet.enable = true;

  systemd.user.services.nm-applet-on-boot = {
    description = "Run nm-applet on boot";
    serviceConfig.PassEnvironment = "DISPLAY";
    script = "exec nm-applet";
    wantedBy = [ "multi-user.target" ]; # starts after login
  };
}
