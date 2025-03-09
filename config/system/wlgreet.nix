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
  services.greetd = {
    enable = true;
    restart = false;
    settings = {
      default_session = {
        #command = "${pkgs.sway}/bin/sway --config ${swayConfig}";
        command = "tuigreet --cmd 'dbus-run-session sway' -t -r --asterisks -g 'Hiya'";
      };
      initial_session = {
        user = "lex";
        command = "dbus-run-session sway";
      };
    };
  };
}
