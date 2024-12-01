{ pkgs, ... }: {

  programs.waybar.settings.mainBar = {
    temperature = {
      format = " {temperatureC}°C";
      critical-threshold =  15;
	    format-critical = "🔥{temperatureC}°C🔥";
      format-icons = [ "" "" "" ];
    };
  };
}