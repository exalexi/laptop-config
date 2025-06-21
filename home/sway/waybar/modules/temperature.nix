{ ... }:
{

  programs.waybar.settings.mainBar = {
    temperature = {
      hwmon-path = "/sys/class/hwmon/hwmon5/temp1_input";
      format = " {temperatureC}°C";
      critical-threshold = 70;
      format-critical = "🔥{temperatureC}°C";
      format-icons = [
        ""
        ""
        ""
      ];
    };
  };
}
