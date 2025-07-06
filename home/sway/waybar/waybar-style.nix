# Thanks to Leela for the base of this
let
  custom = {
    accent = "#f5c2e7";
    text = "#cdd6f4";
    background = "#1e1e2e";
    transparency = "rgba(0,0,0,0)";
  };
in
{ ... }:
{
  programs.waybar.style = ''
    * {
        border: none;
        border-radius: 0px;
        border-color: ${custom.accent};
        font-family: "Nerd Fonts Mono";
        font-size: 14px;
        min-height: 0;
    }

    window#waybar {
        background: ${custom.transparency};
    }

    #workspaces {
        background: ${custom.background};
        margin: 0px 0px;
        padding: 0px 2px 4px 2px;
        border-radius: 0px 0px 15px 15px;
        color: ${custom.accent};
    }

    #workspaces button {
        padding: 0px 0px;
        margin: 0px 2px;
        border-radius: 10px;
        color:${custom.text};
        background: ${custom.transparency};
        min-width: 15px;
        transition: all 0.3s ease-in-out;
    }

    #workspaces button.active {
        background-color: ${custom.accent};
        color: ${custom.background};
        border-radius: 10px;
        min-width: 30px;
        
        transition: all 0.3s ease-in-out;
    }
    #workspaces button:focused {
        background-color: ${custom.accent};
        color: ${custom.background};
        border-radius: 10px;
      /*min-width: 50px;*/
      transition: all 0.3s ease-in-out;
        
    }

    #tray, #backlight, #pulseaudio, #network, #battery, #user, #cpu, #temperature{
        background: ${custom.background};
        border: 2px;
        border-color: ${custom.accent};
        color: ${custom.text};
        border-radius: 0px 0px 15px 15px;
        padding: 0 20px;
        margin: 0px;
        margin-left: 7px;
    }

    #clock {
        color: ${custom.text};
        background: ${custom.background};
        border-radius: 0px 0px 0px 15px;
        padding: 0 10px 0 25px;
        margin-left: 7px;
    }

    window#waybar #window {
        background: ${custom.background};
        color: ${custom.text};
        padding: 0 20px;
        border-radius: 0px 0px 15px 0px;
        margin: 0px 0;
    }
  '';
}
