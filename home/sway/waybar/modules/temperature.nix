{ pkgs, ... }:
{

  programs.waybar.settings.mainBar = {
    temperature = {
      hwmon-path = "/sys/devices/pci0000:00/0000:00:1d.0/0000:07:00.0/nvme/nvme1/hwmon0/temp1_input";
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
