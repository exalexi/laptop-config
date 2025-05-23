{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    #package = pkgs.vscodium-fhs;
    package = pkgs.vscode-fhs;
    extensions = with pkgs.vscode-extensions; [
      catppuccin.catppuccin-vsc-icons
      catppuccin.catppuccin-vsc
      jnoortheen.nix-ide
      redhat.java
      vscjava.vscode-gradle
      vscjava.vscode-java-debug
      ms-vscode-remote.remote-ssh
      myriad-dreamin.tinymist
      tomoki1207.pdf
      raspberry-pi.raspberry-pi-pico
    ];
    userSettings = {
      "[typst]" = {
        "editor.wordSeperators" = "`~!@#$%^&*()=+[{]}\\|;:'\",.<>/?";
      };
      "editor.formatOnSave" = true;
      "files.autoSave" = "onFocusChange";
      "git.enableSmartCommit" = true;
      "java.jdt.ls.java.home" = "${pkgs.jdk21}";
      "nix.enableLanguageServer" = true;
      "nix.formatterPath" = "nixfmt";
      "nix.serverPath" = "nil";
      "nix.serverSettings" = {
        "nil" = {
          "formatting" = {
            "command" = [
              "nixfmt"
            ];
          };
        };
      };
      "redhat.telemetry.enabled" = false;
      "window.menuBarVisibility" = "toggle";
      "workbench.colorTheme" = "Catppuccin Mocha";

    };
  };
}
