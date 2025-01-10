{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium-fhs;
    extensions = with pkgs.vscode-extensions; [
      catppuccin.catppuccin-vsc-icons
      catppuccin.catppuccin-vsc
      jnoortheen.nix-ide
    ];
    userSettings = {

      "nix.enableLanguageServer" = true;
      "nix.serverSettings" = {
        "nil" = {
          "formatting" = {
            "command" = [
              "nixfmt"
            ];
          };
        };
      };
      "workbench.colorTheme" = "Catppuccin Mocha";
      "files.autoSave" = "onFocusChange";
      "editor.formatOnSave" = "true";
      "nix.formatterPath" = "nixfmt";
      "nix.serverPath" = "nil";
    };
  };
}
