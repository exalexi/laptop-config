{ pkgs, ... }:
let
  swayConfig = pkgs.writeText "greetd-sway-config" ''
    exec "${pkgs.greetd.wlgreet}/bin/wlgreet --command sway; swaymsg exit"
    bindsym Mod4+shift+e exec swaynag \
      -t warning \
      -m 'What do you want to do?' \
      -b 'Poweroff' 'systemctl poweroff' \
      -b 'Reboot' 'systemctl reboot'
  '';
in
{
  # Swap with Regreet maybe, looks good
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.sway}/bin/sway --config ${swayConfig}";
      };
    };
  };
}
